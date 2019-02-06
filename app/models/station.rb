class Station
  def initialize(nrel_response)
    @nrel_response = nrel_response
  end

  def self.generate(nrel_response)
    JSON.parse(nrel_response.body).map do |object|
      Station.new(object)
    end
  end
end
