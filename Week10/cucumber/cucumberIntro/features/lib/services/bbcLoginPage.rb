require "capybara/dsl"

class BBCLoginPage

  include Capybara::DSL

  attr_reader :detailsDontMatchError, :missingDetailsError, :validUsername, :validPassword, :loginPageUrl

  LOGINPAGE_LINK = "https://account.bbc.com/signin"

  USERNAME_ERROR_MESSAGE = "form-message-username"
  PASSWORD_ERROR_MESSAGE = "form-message-password"

  def initialize
    detailsDontMatchError = "Sorry, those details don't match. Check you've typed them correctly."
    missingDetailsError = "Something's missing. Please check and try again."
    validUsername = "rwhitehouse@spartaglobal.com"
    validPassword = "Password123"
    loginPageUrl = "https://account.bbc.com/signin"
  end

  def visitLoginpage
    visit(LOGINPAGE_LINK)
  end

  def insertEmail email
    fill_in("user-identifier-input", with: email)
  end

  def insertPassword password
    fill_in("password-input", with: password)
  end

  def clickLogin
    click_on("submit-button")
  end

  def findBlankCredentialsErrors
    all(".form-message__text")
  end

  def findUsernameError
    find(USERNAME_ERROR_MESSAGE).text
  end

  def findPasswordError
    find(PASSWORD_ERROR_MESSAGE).text
  end

end
