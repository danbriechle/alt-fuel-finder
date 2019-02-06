class NrelService
  def self.conn(zip)
    @conn = Faraday.new(url: "https://developer.nrel.gov") do |f|
      f.headers["X-Api-Key"] =  ENV['NREL_API_KEY']
      f.adapter Faraday.default_adapter
  end
    @conn.get "/api/alt-fuel-stations/v1/nearest.json?location=#{zip}&limit=10"
  end
end
