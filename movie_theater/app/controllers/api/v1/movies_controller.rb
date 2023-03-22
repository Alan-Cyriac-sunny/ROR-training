# frozen_string_literal:true

# controller for movie_theater
class Api::V1::MoviesController < ApplicationController
  before_action :find_movie, only: %i[show update destroy]

  def index
    movies = Movie.all
    render json: { movies: movies }
  end

  def show
    if @movie.present?
      render json: @movie
    else
      render json: { message: 'Movie not found' }, status: :ok
    end
  end

  def create
    movie = Movie.create(movies_params)
    if movie.save
      render json: movie
    else
      render json: { error: 'movie cannot be created' }
    end
  end

  def update
    if @movie
      @movie.update(movies_params)
      render json: @movie
    else
      render json: { message: 'Movie not found' }, status: :ok
    end
  end

  def destroy
    if @movie.present?
      render json: @movie
      movie.destroy
      render json: { message: 'Movie deleted' }, status: :ok
    else
      render json: { message: 'Movie not found' }, status: :ok
    end
  end

  private

  def movies_params
    params.require(:movie).permit(:name, :character)
  end

  def find_movie
    @movie = Movie.find_by(id: params[:id])
  end
end
