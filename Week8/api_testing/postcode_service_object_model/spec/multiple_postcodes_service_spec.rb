require_relative "../lib/postcode.rb"

describe "Postcodes API" do
  context "Multiple Postcodes" do
    before(:all) do
      @response = Postcode.new.multiple_postcodes_service
      @response.get_many_postcodes ["OX163WA", "HP43LG", "SO45 BPA"]
    end

    it "should respond to get_many_postcodes" do
      expect(@response).to respond_to :get_many_postcodes
    end

    it "should return a hash" do
      expect(@response.many_postcodes).to be_a Hash
    end

    it "should contain a hash containing multiple hashes" do
      
    end
  end
end
