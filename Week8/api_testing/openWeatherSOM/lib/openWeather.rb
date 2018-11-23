require_relative "services/fiveDayCityService.rb"
require_relative "services/singleCityService.rb"

class OpenWeather
  def singleCityService city, country
    SingleCityService.new city, country
  end

  def fiveDayCityService city, country
    FiveDayCityService.new city, country
  end
end
