require "spec_helper"

describe "BBC Mobile Device Testing" do
  before(:all) do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "should open the homepage" do
    get("http://www.bbc.co.uk")
    sleep 5
  end
end
