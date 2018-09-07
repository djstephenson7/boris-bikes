require './lib/docking_station'
require './lib/bike'

describe DockingStation do
  it { should respond_to :release_bike}

  it 'releases a working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { should respond_to(:dock).with(1).argument }
  it {should respond_to (:bike)}
end
