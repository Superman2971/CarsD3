class CarSerializer < ActiveModel::Serializer
  attributes :model, :make, :avg_gas_price, :annual_fuel_cost, :highway_mpg

  def model
    object.model
  end

  def make
    object.make
  end

  def avg_gas_price
    @model = object.model
    gas_array = []
    Car.all.each do |car|
      if car.model == @model
        @add = [car.year, car.avg_gas_price.to_f]
        gas_array.push(@add)
      end
    end
    gas_array
  end

  def annual_fuel_cost
    @model = object.model
    fuel_array = []
    Car.all.each do |car|
      if car.model == @model
        @add = [car.year, car.annual_fuel_cost]
        fuel_array.push(@add)
      end
    end
    fuel_array
  end

  def highway_mpg
    @model = object.model
    highway_array = []
    Car.all.each do |car|
      if car.model == @model
        @add = [car.year, car.highway_mpg]
        highway_array.push(@add)
      end
    end
    highway_array
  end
end
