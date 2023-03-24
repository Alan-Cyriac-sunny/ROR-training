class Movie < ApplicationRecord
	belongs_to :director, foreign_key: :director_id
	has_many :user_movies
	has_many :users, through: :user_movies
	validates :name, presence: true
	validates :character, presence: true
end
