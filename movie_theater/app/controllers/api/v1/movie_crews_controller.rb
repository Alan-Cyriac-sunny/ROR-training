class Api::V1::MovieCrewsController < ApplicationController
  def create
    movie_crew = MovieCrew.create(movie_crew_params)
    if movie_crew.save
      render json: { message: "movie_crew created", movie_crew: movie_crew }, status: :ok
    else
      render json: { message: "movie_crew can't be created" }, status: :ok
    end
  end

  def movie_crew_params
    params.permit(:crew_id, :movie_id)
  end
end
