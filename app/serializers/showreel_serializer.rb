class ShowreelSerializer < ActiveModel::Serializer
  attributes :model, :year, :city_mpg

  def model
    object.model
  end

  def year
    object.year
  end

  def city_mpg
    object.city_mpg
  end
end