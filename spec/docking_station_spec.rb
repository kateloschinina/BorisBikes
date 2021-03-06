require 'docking_station'

describe DockingStation do

  it { should respond_to :release_bike }

  it 'releases working bike' do
    should respond_to(:release_bike).with(0).argument
    station = subject
    expect {station.release_bike}.to raise_error("There are no bikes at the station!")
    station.dock_bike(Bike.new)
    bike = station.release_bike
    expect(bike).to be_working
  end

  it 'docks bike at a docking station' do
    should respond_to(:dock_bike).with(1).argument
    station = subject
    bike = Bike.new
    expect(station.dock_bike(bike).last).to eq(bike)
    expect {DockingStation::DEFAULT_CAPACITY.times {station.dock_bike(bike)}}.to raise_error("Station is full")
  end

=begin

  it 'member sees a station and ckeck if there is a bike' do
    station = subject
    expect {station.bike_there?}.to raise_error("There are no bikes at the station!")
    station.dock_bike(Bike.new)
    expect(station.bike_there?).to be_truthy
  end

  it 'checks if docking station is full' do
    station = subject
    expect(station.station_has_space?).to be_truthy
    DockingStation::DEFAULT_CAPACITY.times {station.dock_bike(Bike.new)}
    expect {station.station_has_space?}.to raise_error("Station is full")
  end
=end

end

=begin
it 'Gets a bike' do
  docking_station.release_bike.should be_a(Bike)
end

it 'Whether bike is working' do
  docking_station.release_bike.should respond_to(:working?)
end
=end
