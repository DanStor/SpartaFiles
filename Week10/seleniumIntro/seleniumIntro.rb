require 'selenium-webdriver'

chromeDriver = Selenium::WebDriver.for :chrome

chromeDriver.get('http://toolsqa.com/automation-practice-form/')

# Find the link element with text "Partial Link Test"
chromeDriver.find_element(:link_text, "Partial Link Test").click

# Find all link elements containing the text "Link Test"
# chromeDriver.find_element(:partial_link_text, "Link Test").click

sleep 2

if chromeDriver.find_element(:name, "firstname").displayed?
  chromeDriver.find_element(:name, "firstname").send_keys("Brian")
end

sleep 2
