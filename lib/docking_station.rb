class DockingStation
  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock_bike(bike)
    fail 'Docking station full' if @bike
    @bike = bike
  end

  attr_reader :bike
end
