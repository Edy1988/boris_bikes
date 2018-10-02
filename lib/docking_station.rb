class DockingStation
  def release_bikegit
    Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end

  attr_reader :bike
end
