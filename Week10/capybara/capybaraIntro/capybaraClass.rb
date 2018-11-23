require "capybara"

class Nandos

  HOMEPAGE_URL = "https://www.nandos.co.uk/"

  def initialize
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    @session = Capybara::Session.new(:chrome)
  end

  def visitHomepage
    @session.visit(HOMEPAGE_URL)
  end

  def clickHomeLogo
    @session.click_on("Nandos's")
  end

  # Only use when nothing else works
  def findByXPath string
    @session.find(:xpath, string)
  end

  def findAll string
    @session.all(string)
  end

  def findThis string
    @session.find(string)
  end

  def clickThis string
    @session.click_on(string)
  end

end

testcase = Nandos.new
testcase.visitHomepage
sleep 1
# testcase.findByXPath("//*[@id='navigation']/ul[1]/li[1]/a").sibling()
# p testcase.findAll(".navigation__link")[0].sibling("navigation__content")
testcase.clickThis("Menu")
sleep 1
testcase.clickHomeLogo
sleep 1
testcase.clickThis("Gift Cards")
sleep 1
testcase.clickThis("Profile")

sleep 2
