require "httparty"
require "json"

class MultiplePostcodeService
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor :many_postcodes

  def get_many_postcodes postcode_array
    @many_postcodes = JSON.parse(self.class.post("/postcodes", body: {"postcodes": postcode_array}).body)
  end
end
