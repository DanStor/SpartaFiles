require_relative "../lib/openWeather.rb"

describe "OpenWeather API" do
  before(:all) do
    @dayService = OpenWeather.new.singleCityService "Banbury", "uk"
    @city = @dayService.city
    @fiveDay = OpenWeather.new.fiveDayCityService "Banbury", "uk"
  end

  context "Day Weather Properties" do
    it "should contain an hash" do
      expect(@city).to be_a Hash
    end

    it "the hash should be of length 12" do
      expect(@city.length).to eq 12
    end

    it "should contain an array" do
      expect(@city).to all(be_an Array)
    end

    it "should contain 'coord' property" do
      expect(@city).to have_key "coord"
    end

    it "should contain 'weather' property" do
      expect(@city).to have_key "weather"
    end

    it "should contain 'base' property" do
      expect(@city).to have_key "base"
    end

    it "should contain 'main' property" do
      expect(@city).to have_key "main"
    end

    it "should contain 'visibility' property" do
      expect(@city).to have_key "visibility"
    end

    it "should contain 'wind' property" do
      expect(@city).to have_key "wind"
    end

    it "should contain 'clouds' property" do
      expect(@city).to have_key "clouds"
    end

    it "should contain 'dt' property" do
      expect(@city).to have_key "dt"
    end

    it "should contain 'sys' property" do
      expect(@city).to have_key "sys"
    end

    it "should contain 'id' property" do
      expect(@city).to have_key "id"
    end

    it "should contain 'name' property" do
      expect(@city).to have_key "name"
    end

    it "should contain 'cod' property" do
      expect(@city).to have_key "cod"
    end

  end

  context "id" do
    it "should be an integer" do
      expect(@city["id"]).to be_an Integer
    end
  end

  context "coord" do
    it "should contain 2 properties" do
      expect(@city["coord"].length).to eq 2
    end

    it "should contain propterty 'lon'" do
      expect(@city["coord"]).to have_key "lon"
    end

    it "should contain a float within 'lon'" do
      expect(@city["coord"]["lon"]).to be_a Float
    end

    it "should contain propterty 'lat'" do
      expect(@city["coord"]).to have_key "lat"
    end

    it "should contain a float within 'lat'" do
      expect(@city["coord"]["lat"]).to be_a Float
    end
  end
end
