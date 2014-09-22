require "rubygems"
require 'csv'
require "json"
require "pathname"

file_name = Pathname.new("sorting_cars.csv").basename(".csv").to_s

all_cars_array = []
CSV.read("sorting_cars.csv").each do |line|
  all_cars_array.push(line)
end

def car_count(all_cars_array)
  list = {}
  all_cars_array.each do |inner_array|
    inner_array.each do |car|
      list = process_cars_in_list(car, list)
    end
  end
  list.sort_by {|key, value| value}
end

def process_cars_in_list(car, list)
  return list if car.empty?
  list[car] ||= 0
  list[car] += 1
  list
end

puts car_count(all_cars_array)