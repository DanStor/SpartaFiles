require "selenium-webdriver"
require_relative "services/bbcHomepage.rb"
require_relative "services/bbcLoginPage.rb"
require_relative "services/bbcAccountPage.rb"


class BBCSite

  def bbcHomepage
    BBCHomepage.new
  end

  def bbcLoginPage
    BBCLoginPage.new
  end

  def bbcAccountPage
    BBCAccountPage.new
  end
end
