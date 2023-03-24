class Api::V1::DirectorsController < ApplicationController
	before_action :find_director, only: %i[show update destroy]

  def index
    directors = Director.all.order(:id)
    render json: directors
  end

  def directors_with_movies
    directors = Director.joins(:movies).distinct
    render json: directors
  end

  def show
      render json: { message: "Director retrieved", "director details" => @director }, status:302
  end

  def create
    director = Director.create(directors_params)
    if director.save
      render json: { message: "director created", "Created director" => director }, status: 201
    else
      render json: { message: @director.errors.messages }, status: :forbidden
    end
  end

  def update
    if @director.update(directors_params)
      render json: { message: "director updated", "Updated director" => @director }, status: 202
    else
      render json: { message: @director.errors.messages }, status: :forbidden
    end
  end

  def destroy
      @director.destroy
      render json: { message: 'director deleted' }, status: :ok
  end

  private

  def directors_params
    params.require(:director).permit(:name)
  end

  def find_director
    @director = Director.find_by(id: params[:id])
    render json: { message: "director not found" }, status: :ok unless @director.present?
  end
end
