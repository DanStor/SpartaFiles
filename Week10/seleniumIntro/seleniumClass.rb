require "selenium-webdriver"

class SeleniumQAToolsForm

  def initialize
    @driver = Selenium::WebDriver.for :chrome
  end

  def visitPage
    @driver.get('http://toolsqa.com/automation-practice-form/')
  end

  def inputFirstName name
    @driver.find_element(:name, "firstname").send_keys(name)
  end

  def inputLastName name
    @driver.find_element(:name, "lastname").send_keys(name)
  end

  def findText
    @driver.find_element(:class, "bcd").text
  end
end

x = SeleniumQAToolsForm.new
x.visitPage
sleep 1
text = x.findText
x.inputFirstName text
x.inputLastName "Falafel"
sleep 3
