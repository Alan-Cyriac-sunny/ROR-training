class Movie < ApplicationRecord
	has_many :user_movies
	has_many :users, through: :user_movies
  has_many :movie_casts
  has_many :movie_crews
  has_many :actors, through: :movie_casts
  has_many :crews, through: :movie_crews
	validates :name, presence: true
  validates :name, uniqueness: true
	validates :character, presence: true
end
