class CrewSerializer < ActiveModel::Serializer
  attributes :id, :crew, :name, :movies

  def movies
    object.movies.pluck(:name)
  end

  def crew
    object.crew_type.name
  end

end
