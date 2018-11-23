require_relative '../lib/person.rb'

describe Person do
  before(:all) do
    @people_index = Person.new.person_index_service.get_people
  end

  context "when getting all the people" do
    it "should return an array of hashes" do
      expect(@people_index).to be_an Array
    end

    it "should have a length of 10" do
      expect(@people_index.length).to eq 10
    end

    it "should be a hash" do
      expect(@people_index).to all(be_a Hash)
    end
  end

  context "within each person" do
    it "should have 7 properties: first_name, last_name, dob, organisation, address, cars, pets" do

      @people_index.each do |person|
        expect(person.length).to eq 7
      end

      expect(@people_index).to all(have_key("first_name"))
      expect(@people_index).to all(have_key("last_name"))
      expect(@people_index).to all(have_key("dob"))
      expect(@people_index).to all(have_key("organisation"))
      expect(@people_index).to all(have_key("address"))
      expect(@people_index).to all(have_key("cars"))
      expect(@people_index).to all(have_key("pets"))
    end

    it "pets can have 0 entries" do
      @people_index.each do |person|
        expect(person["pets"].length).to be >= 0
      end
      # expect(@people_index["pets"]).to all(be >= 0)
    end

    it "pets should have 8 properties: id, name, animal, origin, leg, person_id, created_at, updated_at" do
      @people_index.each do |person|
        person["pets"].each do |pet|
          expect(pet.length).to eq 8

          expect(pet).to have_key "id"
          expect(pet).to have_key "name"
          expect(pet).to have_key "animal"
          expect(pet).to have_key "origin"
          expect(pet).to have_key "leg"
          expect(pet).to have_key "person_id"
          expect(pet).to have_key "created_at"
          expect(pet).to have_key "updated_at"
        end
      end

    end
  end
end
