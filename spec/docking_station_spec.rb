require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'raises error when there are no bikes' do
      expect {subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'docks bike' do
    expect(subject).to respond_to :dock_bike
  end
end
