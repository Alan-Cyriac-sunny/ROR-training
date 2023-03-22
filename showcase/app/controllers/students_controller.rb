class StudentsController < ApplicationController
	def index
		@students = Student.all
	end

	def create
		# binding.pry
		@student = Student.create(student_params)
		# imagable = student_params.file
		@student.save
		@picture = Picture.new
		@picture.imagable_id = @student.id
		@picture.file = params[:file].original_filename
		@picture.imagable_type = 'Student'
		@picture.save

		redirect_to students_path
	end


	private

	def student_params
		params.permit(:name, :admission_number)
	end
end
