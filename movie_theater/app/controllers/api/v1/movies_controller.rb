# frozen_string_literal:true

# controller for movies
class Api::V1::MoviesController < ApplicationController
  before_action :authorize_request
  before_action :find_movie, only: %i[show update destroy]

  def index 
    movies = Movie.all
    render json: movies
  end

  def show
      render json: { message: "movie retrieved", "movie details" => @movie }, status:302
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

  def new_comment
    # binding.pry
    if Movie.find(params[:movie_id])
      user_movie = UserMovie.new
      user_movie.comment = params[:comment]
      user_movie.movie_id = params[:movie_id]
      binding.pry
      user_movie.user_id = @current_user.id
      if user_movie.save
        render json: { message: 'Comment created', 'Created comment' => user_movie }, status: :created
      else
        render json: { message: user_movie.errors.messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "not_found" }, status: :not_found
    end
  end

  def destroy
    @movie.destroy
    render json: { message: 'Movie deleted' }, status: :ok
  end

  private

  def movies_params
    params.require(:movie).permit(:name, :character, :director_id, :comment)
  end

  def find_movie
    @movie = Movie.find_by(id: params[:id])
    if !@movie.present?
      render json: { message: "not found" }, status: :not_found
    end
  end
end
