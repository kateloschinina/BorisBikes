require 'docking_station'

describe DockingStation do

  it 'checks that newly created station is a Station' do
    expect(subject).to be_a(DockingStation)
  end

  it 'checks that newly created station has an empty array of bikes' do
    expect(subject.bikes).to eq([])
  end

end
