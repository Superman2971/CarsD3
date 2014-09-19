class CarsController < ApplicationController

  respond_to :json

  def index
    @cars = Car.where(:id =>2) + Car.where(:id => 33) + Car.where(:id => 64) + Car.where(:id => 95) + Car.where(:id => 126) + Car.where(:id => 157) 
    respond_with @cars, each_serializer: CarSerializer, root: false
  end

  def timeline
    @cars = Car.where(:id =>2) + Car.where(:id => 33) + Car.where(:id => 64) + Car.where(:id => 95) + Car.where(:id => 126) + Car.where(:id => 157) 
    respond_with @cars, each_serializer: CarSerializer, root: false
  end

  def showreel
    @cars = Car.all 
    respond_with @cars, each_serializer: ShowreelSerializer, root: false
  end

end
