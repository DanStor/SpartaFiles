require_relative "services/bbcHomepage.rb"
require_relative "services/bbcLoginPage.rb"


module BBCSite

  def bbcHomepage
    BBCHomepage.new
  end

  def bbcLoginPage
    BBCLoginPage.new
  end
  
end
