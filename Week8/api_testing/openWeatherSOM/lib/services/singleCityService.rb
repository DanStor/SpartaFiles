require 'json'
require 'httparty'

class SingleCityService
  include HTTParty
  base_uri "https://api.openweathermap.org/data/2.5/weather?q="

  attr_accessor :city

  def initialize city, country
    @apiKey = '7e8044922ecfa0b6cfe8d491eccdde68'
    @city = JSON.parse(self.class.get("#{city}&appid=#{@apiKey}").body)
  end
end
