class ShowreelSerializer < ActiveModel::Serializer
  attributes :model, :year, :highway_mpg

  def model
    object.model
  end

  def year
    object.year
  end

  def highway_mpg
    object.highway_mpg
  end
end