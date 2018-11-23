require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq "http://toolsqa.com/automation-practice-form/"
    end

    it "should have a first name field" do
      expect(@driver.first_name_field_displayed).to be true
    end

    it "should have a last name field" do
      expect(@driver.last_name_field_displayed).to be true
    end

    it 'should accept a first name' do
      @driver.set_first_name_field "Alan"
      expect(@driver.get_first_name_field_value).to eq "Alan"
    end

    it 'should accept a last name' do
      @driver.set_last_name_field "Alanman"
      expect(@driver.get_last_name_field_value).to eq "Alanman"
    end

    it "should accept sex male" do
      @driver.set_sex_radio_male_true
      expect(@driver.get_sex_radio_male_value).to eq true
    end

    it "should accept sex female" do
      @driver.set_sex_radio_female_true
      expect(@driver.get_sex_radio_female_value).to eq true
    end

    it "should not accept sex both male and female" do
      @driver.set_sex_radio_female_true
      @driver.set_sex_radio_male_true
      expect(@driver.get_sex_radio_male_value).to eq true
      expect(@driver.get_sex_radio_female_value).to eq false
    end

    it "should have 7 radio buttons for years of experience" do
      expect(@driver.get_experience.length).to eq 7
    end

    it "should have no experience buttons pressed before input" do
      @driver.get_experience.each do |button|
        expect(button.selected?).to eq false
      end
    end

    it "should press an experience button" do
      buttonIndex = 2
      @driver.set_experience buttonIndex
      expect(@driver.get_experience[buttonIndex].selected?).to eq true
    end

    it "should only allow one experience button to be pressed at any given time" do
      buttonA = 2
      buttonB = 5

      @driver.set_experience buttonA
      @driver.set_experience buttonB

      expect(@driver.get_experience[buttonB].selected?).to eq true
      expect(@driver.get_experience[buttonA].selected?).to eq false
    end

  end

end
