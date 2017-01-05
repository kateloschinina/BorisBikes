require 'docking_station'

describe DockingStation do

  it { should respond_to :release_bike }

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
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
