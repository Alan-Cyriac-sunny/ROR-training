class CrewType < ApplicationRecord
  has_many :crews
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
