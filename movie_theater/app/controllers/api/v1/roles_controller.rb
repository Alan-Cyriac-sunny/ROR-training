class Api::V1::RolesController < ApplicationController

  def index
    render json: { message: "All users", data: Role.all }, status: :ok
  end

  def create
    role = Role.create(role_params)
    render json: { message: "role created", data: role }, status: :ok
  end


  private

  def role_params
    params.permit(:role, :user_id)
  end
end
