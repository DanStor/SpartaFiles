require 'capybara/cucumber'
require 'rspec'
require_relative "../lib/bbcSite.rb"

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 5
  config.default_driver = :chrome
end

World(BBCSite)
