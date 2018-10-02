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
 describe '#dock_bike(bike)' do
  it 'docks bike' do
    expect(subject).to respond_to :dock_bike
  end
  it 'raises an error when user tries to dock at full capacity' do
    subject.dock_bike(Bike.new)
    expect{subject.dock_bike(Bike.new)}.to raise_error 'Docking station full'
  end
end
end
