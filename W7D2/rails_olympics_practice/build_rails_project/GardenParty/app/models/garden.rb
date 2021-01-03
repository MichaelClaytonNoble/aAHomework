class Garden < ApplicationRecord
  validates :size, :name, :garden_owner_id, presence: true
  validates :name, uniqueness: {scope: :garden_owner_id}

  belongs_to :garden_owner,
    primary_key: :id,
    foreign_key: :garden_owner_id,
    class_name: :User
    
  has_many :flowers,
    primary_key: :id,
    foreign_key: :garden_id,
    class_name: :Flower

end
