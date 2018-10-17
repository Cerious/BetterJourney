require 'rubygems'
require 'httparty'
class Weather

  def initialize(zip)
    @zip = zip
  end

  def get_humidity
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=' + @zip + ',us&appid=d148b1bb94a214154a697791e088df62')
    response["main"]["humidity"]
  end
end
