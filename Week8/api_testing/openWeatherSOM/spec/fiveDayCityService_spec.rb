require_relative "../lib/openWeather.rb"

describe "OpenWeather API" do
  before(:all) do
    @fiveDay = OpenWeather.new.fiveDayCityService("Banbury", "uk").fiveDay
  end

  context "5Day Weather Properties" do
    it "should contain an hash" do
      expect(@fiveDay).to be_a Hash
    end

    it "the hash should be of length 12" do
      expect(@fiveDay.length).to eq 5
    end

    it "should contain 'cod' property" do
      expect(@fiveDay).to have_key "cod"
    end

    it "should contain 'message' property" do
      expect(@fiveDay).to have_key "message"
    end

    it "should contain 'cnt' property" do
      expect(@fiveDay).to have_key "cnt"
    end

    it "should contain 'list' property" do
      expect(@fiveDay).to have_key "list"
    end

    it "should contain 'city' property" do
      expect(@fiveDay).to have_key "city"
    end
  end

  context "List Property" do
    it "should contain 40 entries" do
      expect(@fiveDay["list"].length).to eq 40
    end

    it "should contain 8 properties within each entry" do
      @fiveDay["list"].each do |day|
        puts day
        expect(day.length).to eq 8
      end
    end
  end
end
