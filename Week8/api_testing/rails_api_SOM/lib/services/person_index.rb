require 'httparty'
require 'json'

class PersonIndexService
  include HTTParty
  base_uri 'http://localhost:3000'

  attr_accessor :people

  def get_people
    @people = JSON.parse(self.class.get('/people').body)
  end
end
