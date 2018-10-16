class Weather

  def initialize(zip)
    @zip = zip
  end

  def get_humidity
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=' + @zip + ',us&appid=[YOUR API KEY HERE]')
    response["main"]["humidity"]
  end
end
