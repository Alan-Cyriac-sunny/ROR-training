class Api::V1::UserMoviesController < ApplicationController
  before_action :authorize_request

  def like
    if UserMovie.find(params[:user_movie_id])
      @like = Like.where(user_id: @current_user.id, user_movie_id: params[:user_movie_id]).first
      if @like.present?
        if params[:status] == ""
          @like.delete
        else
          @like.status = params[:status]
        end
      else
        @like = Like.new
        @like.status = params[:status]
        @like.user_movie_id = params[:user_movie_id]
        @like.user_id = @current_user.id
      end
      if @like.save
        render json: { message: 'Reaction updated', 'Like Status' => @like.status }, status: :created
      else
        render json: { message: @like.errors.messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "not_found" }, status: :not_found
    end
  end

  def comment
    if Movie.find(params[:user_movie_id])
      @user_movie = UserMovie.where(user_id: @current_user.id, movie_id: params[:user_movie_id]).first

      if @user_movie
        @user_movie.comment = params[:comment]
        @user_movie.comment_title = params[:comment_title]
        @user_movie.rating = params[:rating]

      else
        @user_movie = UserMovie.new
        @user_movie.comment = params[:comment]
        @user_movie.movie_id = params[:user_movie_id]
        @user_movie.user_id = @current_user.id
      end

      if @user_movie.save
        render json: { message: 'Comment created', 'Created comment' => @user_movie }, status: :created
      else
        render json: { message: @user_movie.errors.messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "not_found" }, status: :not_found
    end
  end

  private
  def comment_params
    params.permit(:comment_title, :comment, :rating)
  end
end
