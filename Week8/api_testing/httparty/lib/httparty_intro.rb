require "httparty"
require "json"

response = HTTParty.get('http://api.postcodes.io/random/postcodes')

json = JSON.parse(response.body)

class HTTPartyIntro
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor :random_postcode, :single_postcode, :many_postcodes

  def get_random_postcode
    @random_postcode = JSON.parse(self.class.get('/random/postcodes').body)
  end

  def get_random_postcode_result
    @random_postcode["result"]
  end

  def get_single_postcode postcode
    @single_postcode = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_single_postcode_result
    @single_postcode["result"]
  end

  def get_many_postcodes postcode_array
    @many_postcodes = JSON.parse(self.class.post("/postcodes", body: {"postcodes": postcode_array}).body)
  end
end


  postcode1 = HTTPartyIntro.new
  # postcode1.get_random_postcode
  # puts postcode1.random_postcode

  # postcode1.get_single_postcode "E147BB"
  # puts postcode1.single_postcode

  # postcode1.get_many_postcodes ["OX49 5NU", "M32 0JG", "NE30 1DP"]
  # puts postcode1.many_postcodes
