require_relative "../lib/postcode.rb"

describe "Postcodes API" do
  context "Single/Random Postcode" do
    before(:all) do
      @singlePostcodesClass = Postcode.new.single_postcode_service
      @singlePostcodesClass.get_single_postcode "E147BB"
      @singlePostcodesClass.get_random_postcode
    end

    it "should return a status of 200" do
      expect(@singlePostcodesClass.random_postcode["status"]).to eq 200
    end

    it "should contain 2 items at top level, 'status' and 'result'" do
      expect(@singlePostcodesClass.random_postcode.length).to eq 2
      expect(@singlePostcodesClass.random_postcode).to have_key("status")
      expect(@singlePostcodesClass.random_postcode).to have_key("result")
    end

    it "should contain 23 items within 'result'" do
      expect(@singlePostcodesClass.get_random_postcode_result.length).to eq 23
    end

    it "should contain 5 non-string values" do
      expect([
          @singlePostcodesClass.get_random_postcode_result["quality"],
          @singlePostcodesClass.get_random_postcode_result["northings"],
          @singlePostcodesClass.get_random_postcode_result["eastings"]
        ]).to all(be_an Integer)

      expect([
          @singlePostcodesClass.get_random_postcode_result["longitude"],
          @singlePostcodesClass.get_random_postcode_result["latitude"]
        ]).to all(be_a Float)
    end

    it "should return a region of London for the postcode E14 7BB" do
      expect(@singlePostcodesClass.get_single_postcode_result["admin_district"]).to be_a String
      expect(@singlePostcodesClass.get_single_postcode_result["admin_district"]).to eq "Tower Hamlets"
    end
  end
end
