class StationInfo
  def self.stations(zip)
    Station.generate(NrelService.conn(zip)).take(10)
  end
end
