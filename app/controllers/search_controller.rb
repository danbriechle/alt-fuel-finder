class SearchController < ApplicationController
  def index
    @stations = StationInfo.new(params["q"])
  end
end
