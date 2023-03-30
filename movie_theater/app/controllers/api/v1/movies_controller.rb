# frozen_string_literal:true

# controller for movies
class Api::V1::MoviesController < ApplicationController
  before_action :authorize_request
  before_action :find_movie, only: %i[show destroy update]
  before_action :admin, only: %i[create update destroy]

  def index
    
    movies = Movie.all.where(status: true).order(:id)
    render json: movies
  end

  def show
    # binding.pry
    @movie = Movie.find(params[:id])
    render json: @movie, scope: @current_user, status: :ok
  end

  def create
    movie = Movie.create(movies_params)
    if movie.save
      render json: { message: "movie created", "Created movie" => movie }, status: 201
    else
      render json: { message: @movie.errors.messages }, status: :forbidden
    end
  end

  def update
    if @movie.update(movies_params)
      render json: { message: "movie updated", "Updated movie" => @movie }, status: :ok
    else
      render json: { message: @movie.errors.messages }, status: :forbidden
    end
  end

  def destroy
    @movie.status = false
    @movie.save!
    render json: { message: 'Movie deleted' }, status: :ok
  end

  private

  def movies_params
    
    params.permit(:name, :character, :comment)
  end

  def find_movie
    @movie = Movie.find_by(id: params[:id])
    if !@movie.present?
      render json: { message: "not found" }, status: :not_found
    end
  end

  def admin
    @role = @current_user.role.role
    if @role == "user"
      render json: { message: "You have no privallage" }, status: :ok
    end
  end
end
