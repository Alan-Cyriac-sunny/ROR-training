class EmployeeController < ApplicationController
	def index
		@employees = Employe.all.order(:id)
		# @employees.file = params[:file]
    end

	def new
		@employee = Employe.new
	end

	def create
		@employee = Employe.create(employee_params)
		# binding.pry
		@employee.save
		redirect_to employee_index_path
	end

	def show
		@employee = Employe.find(params[:id])

	end

	def edit
		@employee = Employe.find(params[:id])

	end

	def update
  	@employee = Employe.find(params[:id])
  	if @employee.update(employee_params.except(:skills))
  	  @employee.skills = employee_params[:skills].reject { |s| s == "0" }
  	  @employee.save
  	  redirect_to employee_index_path
  	else
  	  render :edit
  	end
	end
	
	def destroy
    @employee = Employe.find(params[:id])
    @employee.destroy
    redirect_to employee_url
  end

  protected

  def employee_params
  	params.permit(:name, :email, :phone, :gender, :department, :file, skills: [])
  end
end
