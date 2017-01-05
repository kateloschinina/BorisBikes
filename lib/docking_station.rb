require_relative 'bike.rb'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = Array.new
  end

  def release_bike
    @bikes.pop if self.bike_there?
  end

  def dock_bike(bike)
    @bikes << bike if self.station_has_space?
  end

  def bike_there?
    return true if @bikes != []
    raise "There are no bikes at the station!"
  end

  def station_has_space?
    return true if @bikes.length < 20
    raise "Station is full"
  end

end
