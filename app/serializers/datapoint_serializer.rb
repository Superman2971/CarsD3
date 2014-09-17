class DatapointSerializer < ActiveModel::Serializer
  attributes :model, :make, :avg_gas_price, :annual_fuel_cost, :highway_mpg
end
