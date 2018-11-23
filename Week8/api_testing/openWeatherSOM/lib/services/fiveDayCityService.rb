require 'json'
require 'httparty'

class FiveDayCityService
  include HTTParty
  base_uri "https://api.openweathermap.org/data/2.5/forecast?q="

  attr_accessor :fiveDay

  def initialize city, country
    @apiKey = '7e8044922ecfa0b6cfe8d491eccdde68'
    @fiveDay = JSON.parse(self.class.get("#{city},#{country}&appid=#{@apiKey}").body)
  end

end
