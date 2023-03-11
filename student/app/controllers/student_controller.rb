class StudentController < ApplicationController
	def index
		@student = Studnt.all
	end
	def show
		@student = Studnt.find(params[:id])
	end

	def new
		@student = Studnt.new
	end
	def create
    @student = Studnt.create(student_params)
    redirect_to student_path(student)
  end

	def edit
    	@student = Studnt.find(params[:id])
  	end

  def update
    @student = Studnt.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student = Studnt.find(params[:id])
    @student.destroy
    redirect_to student_path, notice: 'Student was successfully deleted.'
  end

  private
  def student_params
    params.require(:student).permit(:name, :phone)
  end

end
