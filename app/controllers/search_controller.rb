class SearchController < ApplicationController
  def index
    @stations = StationFacade.new(params["q"])
    binding.pry
  end
end
