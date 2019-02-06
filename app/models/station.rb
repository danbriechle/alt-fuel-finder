class Station
  attr_reader :name, :address, :fuel_type, :distance, :access_times
  def initialize(nrel_response)
    @name = nrel_response["station_name"]
    @address = nrel_response["street_address"]
    @fuel_type = nrel_response["fuel_type_code"]
    @distance = nrel_response["distance"]
    @access_times = nrel_response["access_days_time"]
  end

  def self.generate(nrel_response)
   fuel_stations = JSON.parse(nrel_response.body)
   fuel_stations["fuel_stations"].map do |object|
      Station.new(object)
    end
  end
end
