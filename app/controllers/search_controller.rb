class SearchController < ApplicationController
  def index
    @stations = StationFacade.new(params["q"]).stations
    binding.pry
  end
end
