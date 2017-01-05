require_relative 'bike.rb'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = Array.new
  end

  def release_bike
    return Bike.new
  end

  def dock_bike(bike)
    @bikes << bike
  end

  def bike_there?
    return true if @bikes != []
    false
  end

end
