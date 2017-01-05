require 'docking_station'

describe DockingStation do

  it { should respond_to :release_bike }

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'docks bike at a docking station' do
    should respond_to :dock_bike
  end

  it 'stores a bike into docking station'do
    bike = Bike.new
    expect(subject.dock_bike(bike).last).to eq(bike)
  end

  it 'member sees a bike and ckeck if it is working' do
    
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
