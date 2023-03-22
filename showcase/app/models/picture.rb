class Picture < ApplicationRecord
	mount_uploader :image, PictureUploader
	belongs_to :imagable, polymorphic: true
end
