class StationFacade
  attr_reader :stations
  def initialize(zip)
    @stations = StationInfo.stations(zip)
  end
end
