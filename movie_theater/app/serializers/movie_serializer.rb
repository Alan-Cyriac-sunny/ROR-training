class MovieSerializer < ActiveModel::Serializer
  attributes :name, :character, :director_name, :comments

  def director_name
    object.director.name
  end

  def comments
    object.user_movies.pluck(:comment)  end
  end
