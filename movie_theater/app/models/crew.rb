class Crew < ApplicationRecord
  belongs_to :crew_type
  has_many :movie_crews
  has_many :movies, through: :movie_crews
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
