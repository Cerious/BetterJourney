load '/home/nick/Documents/betterJourney/Importam/app/services/find_humidity.rb'
class HikesController < ApplicationController
  def index
    weather_object = Weather.new("97210")
    @humidity = weather_object.get_humidity()
    return @humidity
  end
end
