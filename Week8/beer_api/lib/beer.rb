require_relative "services/punkAPIIndexService.rb"

class Beer
  def beerIndexService
    PunkAPIIndexService.new
  end
end

Beer.new.beerIndexService
