require "capybara/dsl"

class BBCAccountPage

  include Capybara::DSL

  def clickSignOut
    click_on("Sign out")
  end

end
