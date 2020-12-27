class Artist < ApplicationRecord
  has_many :albums,
    class_name: 'Album',
    foreign_key: :artist_id,
    primary_key: :id

  def n_plus_one_tracks
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
  end

  def better_tracks_query
    # TODO: your code here
    #this include seems to optimize the query however
    #a join would be more appropriate since we
    #do not require any information about each track
    #we only want to count 
    #albums = self.albums.includes(:tracks)
    
    
    albums = self
    .albums
    .select("albums.id, albums.title, COUNT(*) as tracks_count")
    .joins(:tracks)
    .group("albums.id")

    #notice that the aggregate COUNT function named tracks_count
    #has become a method name that we can use to count the number
    #of tracks on any particular album

    album_catalog = {}
    albums.each do |album|
      album_catalog[album.title] = album.tracks_count
    end

    album_catalog
  end
end
