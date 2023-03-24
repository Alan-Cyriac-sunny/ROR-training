class DirectorSerializer < ActiveModel::Serializer
  attributes :name, :movies

  def movies
    object.movies.pluck(:name)
  end
end
