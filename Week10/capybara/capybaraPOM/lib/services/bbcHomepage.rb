require "capybara/dsl"

class BBCHomepage

  include Capybara::DSL

  HOMEPAGE_URL = "https://www.bbc.co.uk"
  SIGNIN_LINK = "idcta-link"

  def visitHomepage
    visit(HOMEPAGE_URL)
  end

  def getSignInLink
    find(SIGNIN_LINK).text
  end

  def clickSignIn
    click_on(SIGNIN_LINK)
  end
end
