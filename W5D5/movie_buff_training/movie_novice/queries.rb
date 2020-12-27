# == Schema Information
#
# Table name: actors
#
#  id          :integer      not null, primary key
#  name        :string
#
# Table name: movies
#
#  id          :integer      not null, primary key
#  title       :string
#  yr          :integer
#  score       :float
#  votes       :integer
#  director_id :integer
#
# Table name: castings
#  id          :integer      not null, primary key
#  movie_id    :integer      not null
#  actor_id    :integer      not null
#  ord         :integer


def find_angelina
  #find Angelina Jolie by name in the actors table

  Actor.find_by(name: 'Angelina Jolie')

end

def top_titles
  # get movie titles from movies with scores greater than or 
  # equal to 9
  # hint: use 'select' and 'where'

  movie_where = Movie.where('movies.score >= 9')
  movie_where.select(:id, :title)
end

def star_wars
  #display the id, title and year of each Star Wars movie in movies.
  # hint: use 'select' and 'where'

  movie_where = Movie.where("movies.title LIKE 'Star Wars%'")
  movie_select = movie_where.select(:id, :title, :yr)
end


def below_average_years
  #display each year with movies scoring under 5,
  #with the count of movies scoring under 5 aliased as bad_movies,
  #in descending order
  # hint: use 'select', 'where', 'group', 'order'

  movies_select = Movie.select('yr, COUNT(movies.score) as bad_movies')
  movies_where = movies_select.where('movies.score < 5')
  movies_group = movies_where.group(:yr)
  movies_order = movies_group.order('bad_movies DESC')
end

def alphabetized_actors
  # display the first 10 actor names ordered from A-Z
  # hint: use 'order' and 'limit'
  # Note: Ubuntu users may find that special characters
  # are alphabetized differently than the specs.
  # This spec might fail for Ubuntu users. It's ok!

  actors_select = Actor.select(:id, :name)
  actors_order = actors_select.order(name: 'ASC')
  actors_limit = actors_order.limit(10)
end

def pulp_fiction_actors
  # practice using joins
  # display the id and name of all actors in the movie Pulp Fiction
  # hint: use 'select', 'joins', 'where'

  actor_select = Actor.select(:id, :name).distinct
  actor_castings_movies = actor_select.joins(:castings,:movies)
  actors_where = actor_castings_movies.where("movies.title = 'Pulp Fiction'")
end

def uma_movies
  #practice using joins
  # display the id, title, and year of movies 
  # Uma Thurman has acted in
  # order them by ascending year
  # hint: use 'select', 'joins', 'where', and 'order'

  select_from_movie = Movie.select(:id, :title, :yr).distinct
  movie_to_actor = select_from_movie.joins(:castings, :actors)
  where_actor = movie_to_actor.where("actors.name LIKE 'Uma Thurman'")
  order_movies_by = where_actor.order('movies.yr ASC')
end
