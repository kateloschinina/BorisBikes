require 'docking_station'

describe DockingStation do

  it { should respond_to :release_bike }

  it 'releases working bike' do
    station = subject
    expect {station.release_bike}.to raise_error("There are no bikes at the station!")
    station.dock_bike(Bike.new)
    bike = station.release_bike
    expect(bike).to be_working
  end

  it 'docks bike at a docking station' do
    should respond_to(:dock_bike).with(1).argument
  end

  it 'stores a bike into docking station'do
    bike = Bike.new
    expect(subject.dock_bike(bike).last).to eq(bike)
  end

  it 'member sees a station and ckeck if there is a bike' do
    station = subject
    expect {station.bike_there?}.to raise_error("There are no bikes at the station!")
    station.dock_bike(Bike.new)
    expect(station.bike_there?).to be_truthy
  end

  it 'checks if docking station is full' do
    station = subject
    expect(station.station_full?).to be_truthy
    station.dock_bike(Bike.new)
    expect {station.station_full?}.to raise_error("Station is full")
  end

end

=begin
it 'Gets a bike' do
  docking_station.release_bike.should be_a(Bike)
end

it 'Whether bike is working' do
  docking_station.release_bike.should respond_to(:working?)
end
=end
