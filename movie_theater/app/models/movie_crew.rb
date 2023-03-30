class MovieCrew < ApplicationRecord
  belongs_to :movie
  belongs_to :crew
  validates :crew_id, uniqueness: { scope: :movie_id }
end
