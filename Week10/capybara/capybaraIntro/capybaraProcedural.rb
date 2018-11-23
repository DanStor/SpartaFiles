require "capybara"

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)

# @driver.get("http://www.toolsqa.com/automation-practice-form") equivalent
session.visit("http://www.toolsqa.com/automation-practice-form")

# @driver.find_element(:name, "element_name").send_keys("Information to be sent") equivalent
session.within(:css, ".form-horizontal") do
  session.fill_in("firstname", with: "Dan")
end

sleep 2

# Choose will find anything not affiliated with another programming language
(0..1).each do |i|
  session.choose("sex-#{i}")
  sleep 1
end

# Find specifies what type of thing to look for (eg. css class)
(0..6).each do |i|
  session.find(:css, "#exp-#{i}").click
  sleep 1
end

# Select is for grabbing something inside something else that would otherwise impossible to grab
session.select("North America", from: "continents")

sleep 1

session.click_button "submit"
