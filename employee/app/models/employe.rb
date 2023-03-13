class Employe < ApplicationRecord
  mount_uploader :file, FileUploader
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true, format: { with: /\A[0-9]{10}\z/ }
  validates :gender, presence: true, inclusion: { in: ['male', 'female'] }
  validates :skills, presence: true
  validates :department, presence: true
end

