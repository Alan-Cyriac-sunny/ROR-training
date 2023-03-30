class Api::V1::ActorsController < ApplicationController

  def index 
    actors = Actor.all.order(:id)
    render json: actors
  end

  def create
    actor = Actor.create(actor_params)
    if actor.save
      render json: { message: "actor created", actor: actor }, status: :ok
    else
      render json: { message: "actor can't be created" }, status: :ok
    end
  end


  def show
    actor = Actor.find_by(id: params[:id])
    if actor.present?
      render json: actor, status: :ok
    else
      render json: { message: "Record not found" }, status: :ok
    end
  end

  private
  def actor_params
    params.permit(:name)
  end
end
