class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :model
      t.integer :city_mpg
      t.integer :highway_mpg
      t.integer :annual_fuel_cost
      t.float :avg_gas_price

      t.timestamps
    end
  end
end