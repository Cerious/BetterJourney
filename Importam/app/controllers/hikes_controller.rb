def index
  weather_object = Weather.new("97210")
  @humidity = weather_object.get_humidity()
