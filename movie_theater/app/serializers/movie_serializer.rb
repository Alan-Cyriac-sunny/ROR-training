class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :crew, :cast, :comments

  def rating
    object.user_movies.average(:rating)
  end

  def crew
    object.crews.map do |crew|
      {
        crew_type_name: crew.crew_type.name,
        name: crew.name
      }
    end
  end

  def cast
    object.actors.pluck(:name)
  end

  def comments
    object.user_movies.map do |user_movie|
      {
        comment_id: user_movie.id,
        comment: user_movie.comment,
        comment_likes: user_movie.likes.where(status: true).count,
        user_like_status: user_movie.likes.where(user_id: scope&.id)&.first&.status
      }
    end
  end

end
