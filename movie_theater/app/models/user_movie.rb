class UserMovie < ApplicationRecord
	belongs_to :user
	belongs_to :movie
  has_many :likes
  validates :user_id, uniqueness: { scope: :movie_id }
  validates :comment, presence: true
  validates :comment_title, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
