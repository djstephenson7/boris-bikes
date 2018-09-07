require './lib/docking_station'
require './lib/bike'

describe DockingStation do
  it { should respond_to :release_bike}

  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
