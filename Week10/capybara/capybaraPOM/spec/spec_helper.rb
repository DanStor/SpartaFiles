require_relative "../lib/bbcSite.rb"
require "capybara"


RSpec.configure do |config|
  config.formatter = :documentation
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 5
  config.default_driver = :chrome
end
