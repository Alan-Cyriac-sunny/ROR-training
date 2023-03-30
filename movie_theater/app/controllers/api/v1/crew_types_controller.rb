class Api::V1::CrewTypesController < ApplicationController
  def create
    crew_type = CrewType.create(crew_type_params)
    if crew_type.save
      render json: { message: "crew_type created", crew_type: crew_type }, status: :ok
    else
      render json: { message: "crew_type can't be created" }, status: :ok
    end
  end

  def crew_type_params
    params.permit(:name)
  end
end
