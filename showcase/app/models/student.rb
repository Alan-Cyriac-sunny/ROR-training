class Student < ApplicationRecord
	has_many :pictures, as: :imagable
end
