class Api::V1::MovieCastController < ApplicationController
  def create
    movie_cast = MovieCast.create(movie_cast_params)
    if movie_cast.save
      render json: { message: "movie_cast created", movie_cast: movie_cast }, status: :ok
    else
      render json: { message: "movie_cast can't be created" }, status: :ok
    end
  end

  def movie_cast_params
    params.permit(:actor_id, :movie_id)
  end
end
