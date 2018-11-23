require 'httparty'
require 'json'

class PunkAPIIndexService
  include HTTParty
  base_uri 'https://api.punkapi.com/v2/'

  def get_beers
    JSON.parse(self.class.get('/beers').body)
  end

  def get_random_beer
    JSON.parse(self.class.get('/beers/random').body)
  end

  def getBeersABVGreaterThan value
    JSON.parse(self.class.get("/beers?abv_gt=#{value}").body)
  end

  def getBeersABVLessThan value
    JSON.parse(self.class.get("/beers?abv_lt=#{value}").body)
  end

  def getBeerByName value
    JSON.parse(self.class.get("/beers?beer_name=#{value}").body)
  end

  def getBeerMashTemp id
    beer = JSON.parse(self.class.get("/beers/#{id}").body)
    # beer["method"]["mash_temp"]
    puts beer
  end

  def beerHas21Properties? manyBeers
    manyBeers.each do |beer|
      if beer.length != 21
        puts beer.length
        return false
      end
    end

    return true
  end
end
