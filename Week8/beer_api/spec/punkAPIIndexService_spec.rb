require_relative  "../lib/beer.rb"

describe "Beers API" do
  before(:all) do
    @service = Beer.new.beerIndexService
    @allBeers = @service.get_beers
  end
  context "All Beers Properties" do
    it "should contain an array" do
      expect(@allBeers).to be_an Array
    end

    it "the array should be of length 25" do
      expect(@allBeers.length).to eq 25
    end

    it "should respond to get_beers" do
      expect(@service).to respond_to :get_beers
    end

    it "should respond to get_random_beer" do
      expect(@service).to respond_to :get_random_beer
    end

    it "each array index should be of length 21" do
      expect(@service.beerHas21Properties?(@service.get_beers)).to be true
    end

    it "should contain 'id' property" do
      expect(@allBeers).to all(have_key("id"))
    end

    it "should contain 'name' property" do
      expect(@allBeers).to all(have_key("name"))
    end

    it "should contain 'tagline' property" do
      expect(@allBeers).to all(have_key("tagline"))
    end

    it "should contain 'first_brewed' property" do
      expect(@allBeers).to all(have_key("first_brewed"))
    end

    it "should contain 'description' property" do
      expect(@allBeers).to all(have_key("description"))
    end

    it "should contain 'image_url' property" do
      expect(@allBeers).to all(have_key("image_url"))
    end

    it "should contain 'abv' property" do
      expect(@allBeers).to all(have_key("abv"))
    end

    it "should contain 'ibu' property" do
      expect(@allBeers).to all(have_key("ibu"))
    end

    it "should contain 'target_fg' property" do
      expect(@allBeers).to all(have_key("target_fg"))
    end

    it "should contain 'target_og' property" do
      expect(@allBeers).to all(have_key("target_og"))
    end

    it "should contain 'ebc' property" do
      expect(@allBeers).to all(have_key("ebc"))
    end

    it "should contain 'srm' property" do
      expect(@allBeers).to all(have_key("srm"))
    end

    it "should contain 'ph' property" do
      expect(@allBeers).to all(have_key("ph"))
    end

    it "should contain 'attenuation_level' property" do
      expect(@allBeers).to all(have_key("attenuation_level"))
    end

    it "should contain 'volume' property" do
      expect(@allBeers).to all(have_key("volume"))
    end

    it "should contain 'boil_volume' property" do
      expect(@allBeers).to all(have_key("boil_volume"))
    end

    it "should contain 'method' property" do
      expect(@allBeers).to all(have_key("method"))
    end

    it "should contain 'ingredients' property" do
      expect(@allBeers).to all(have_key("ingredients"))
    end

    it "should contain 'food_pairing' property" do
      expect(@allBeers).to all(have_key("food_pairing"))
    end

    it "should contain 'brewers_tips' property" do
      expect(@allBeers).to all(have_key("brewers_tips"))
    end

    it "should contain 'contributed_by' property" do
      expect(@allBeers).to all(have_key("contributed_by"))
    end
  end

  context "Beers Content" do
    it "ABV should be above 30% for three beers" do
      expect(@service.getBeersABVGreaterThan(30).length).to eq 3
    end

    it "searching 'penguin' beer name should return 1 beer" do
      expect(@service.getBeerByName("penguin").length).to eq 1
    end

    it "searching 'penguin' beer name should return beer with name 'Tactical Nuclear Penguin'" do
      expect(@service.getBeerByName("penguin")[0]["name"]).to eq "Tactical Nuclear Penguin"
    end

    # it "id=185 'mash_temp' should be 65 celsius" do
      # puts @service.getBeerMashTemp(185)
      # expect(@service.getBeerMashTemp(185)[0]["temp"]["value"]).to eq 65
    # end
  end
end
