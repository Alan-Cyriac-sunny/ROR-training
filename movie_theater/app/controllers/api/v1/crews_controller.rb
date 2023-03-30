class Api::V1::CrewsController < ApplicationController

  def index 
    crew_members = Crew.all.order(:id)
    render json: crew_members
  end


  def create
    crew = Crew.create(crew_params)
    if crew.save
      render json: { message: "crew created", crew: crew }, status: :ok
    else
      render json: { message: "crew can't be created" }, status: :ok
    end
  end

  def show
    crew = Crew.find_by(id: params[:id])
    if crew.present?
      render json: crew, status: :ok
    else
      render json: { message: "Record not found" }, status: :ok
    end
  end

  private
  def crew_params
    params.require(:crew).permit(:name, :crew_type_id)
  end
end
