class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name, :movies

  def movies
    object.movies.pluck(:name)
  end
end
