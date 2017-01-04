require 'docking_station'

describe DockingStation do

  it { should respond_to :release_bike }

  docking_station = DockingStation.new

  it 'Gets a bike' do
    docking_station.release_bike.should be_a(Bike)
  end

  it 'Whether bike is working' do
    docking_station.release_bike.should respond_to(:working?)
  end

end
