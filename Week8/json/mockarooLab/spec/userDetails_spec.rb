require_relative '../lib/userDetails.rb'

describe 'User Details' do
  before(:all) do
    @deets = UserDetails.new 'json/details.json'
  end

  context "initialisation" do
    it "should be an array" do
      expect(@deets.userDetails).to be_an Array
    end

    it "should contain a hash for each entry" do
      @deets.userDetails.each do |e|
        expect(e).to be_a Hash
      end
    end
  end

  context "vehicles" do
    it "should contain an array of vehicles for each user" do
      expect(@deets).to respond_to :getAllVehicles
      @deets.userDetails.each do |e|
        expect(e["vehicles"]).to be_an Array
      end
      expect(@deets.getAllVehicles.length).to eq 30
    end

    it "should each have a description" do
      expect(@deets).to respond_to :vehiclesHaveDescriptions?
      expect(@deets.vehiclesHaveDescriptions?).to be true
    end
  end

  context "users" do
    it "should access specific user" do
      expect(@deets.getField(0,'last_name')).to eq 'Flintuff'
      expect(@deets.getField(1,'first_name')).not_to eq 'HermanZeGerman'
    end
  end

  context "friends" do
    it "should contain exactly 2 items (first and last names), each containing 5 friends" do
      expect(@deets).to respond_to :getFriends
      expect(@deets.getFriends(2).length).to eq 2
    end

    it "should contain 5 first names and 5 last names" do
      expect(@deets.getFriends(5)["first_name"].length).to eq 5
      expect(@deets.getFriends(9)["last_name"].length).to eq 5
      expect(@deets.getFriends(12)['first_name'][3]).to eq 'Jeremy'
      expect(@deets.getFriends(22)['last_name'][4]).to eq 'Borrett'
    end
  end
end
