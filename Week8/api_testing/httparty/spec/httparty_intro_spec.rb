require_relative "../lib/httparty_intro.rb"

describe "Postcodes API" do
  context "Single/Random Postcode" do
    before(:all) do
      @response = HTTPartyIntro.new
      @response.get_random_postcode
      @response.get_single_postcode "E147BB"
      @response.get_many_postcodes ["OX163WA", "HP43LG", "SO45 BPA"]
    end

    it "should return a status of 200" do
      expect(@response.random_postcode["status"]).to eq 200
    end

    it "should contain 2 items at top level, 'status' and 'result'" do
      expect(@response.random_postcode.length).to eq 2
      expect(@response.random_postcode).to have_key("status")
      expect(@response.random_postcode).to have_key("result")
    end

    it "should contain 23 items within 'result'" do
      expect(@response.get_random_postcode_result.length).to eq 23
    end

    it "should contain 5 non-string values" do
      expect([
          @response.get_random_postcode_result["quality"],
          @response.get_random_postcode_result["northings"],
          @response.get_random_postcode_result["eastings"]
        ]).to all(be_an Integer)

      expect([
          @response.get_random_postcode_result["longitude"],
          @response.get_random_postcode_result["latitude"]
        ]).to all(be_a Float)
    end

    it "should return a region of London for the postcode E14 7BB" do
      expect(@response.get_single_postcode_result["admin_district"]).to be_a String
      expect(@response.get_single_postcode_result["admin_district"]).to eq "Tower Hamlets"
    end
  end

  context "Multiple Postcodes" do
    before(:all) do
      @response = HTTPartyIntro.new
      @response.get_many_postcodes ["OX163WA", "HP43LG", "SO45 BPA"]
    end

    it "should respond to get_many_postcodes" do
      expect(@response).to respond_to :get_many_postcodes
    end

    it "should return an array" do
      expect(@response.many_postcodes).to be_a Hash
    end
  end
end
