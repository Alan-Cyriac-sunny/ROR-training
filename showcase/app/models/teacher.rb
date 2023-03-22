class Teacher < ApplicationRecord
	has_many :pictures as: :imagable
end
