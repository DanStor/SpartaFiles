require "spec_helper"

describe "BBC Website Login Errororororos" do

  VALID_USERNAME = "rwhitehouse@spartaglobal.com"
  VALID_PASSWORD = "Password123"
  SHORT_PASSWORD = "abc"
  INVALID_PASSWORD = "genuinelyGoodPassword1"
  INVALID_USERNAME = "jeifoaefjaf@kevin.com"

  MISSING_DETAILS_ERROR = "Something's missing. Please check and try again."
  INVALID_PASSWORD_ERROR = "Uh oh, that password doesn’t match that account. Please try again."
  SHORT_PASSWORD_ERROR = "Sorry, that password is too short. It needs to be eight characters or more."
  DETAILS_DONT_MATCH_ERROR = "Sorry, those details don't match. Check you've typed them correctly."

  REGISTER_NOW_PARTIAL = "https://account.bbc.com/register?context=homepage&nonce="
  UNDER_THIRTEEN_PARTIAL = "https://account.bbc.com/register/details/guardian?context=homepage&nonce="
  THIRTEEN_OR_OVER_PARTIAL = "https://account.bbc.com/register/details/age?context=homepage&nonce="
  REGISTER_LINK_TEXT = "Register now"
  UNDER_THIRTEEN_LINK_TEXT = "Under 13"
  THIRTEEN_OR_OVER_LINK_TEXT = "13 or over"

  SUBMIT_ID = "submit-button"

  DAY_ID = "day-input"
  MONTH_ID = "month-input"
  YEAR_ID = "year-input"

  VALID_DAY = "28"
  VALID_MONTH = "01"
  VALID_YEAR = "1995"

  EMPTY_DOB_FIELD_ID = "form-message-dateOfBirth"
  EMPTY_DOB_FIELD_ERROR = "Oops, that day doesn't look right. Make sure it's a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009."

  before(:each) do
    @driver = BBCSite.new
    @driver.bbcHomepage.visitHomepage
  end

  it "should allow the user to navigate to the login page" do
    expect(@driver.bbcHomepage.current_url).to eq "https://www.bbc.co.uk/"
  end

  it "should login with valid credientials" do
    @driver.bbcLoginPage.visitLoginpage
    sleep 1
    @driver.bbcLoginPage.insertEmail(VALID_USERNAME)
    @driver.bbcLoginPage.insertPassword(VALID_PASSWORD)
    @driver.bbcLoginPage.clickLogin
    sleep 1
    expect(@driver.bbcHomepage.current_url).to eq "https://www.bbc.co.uk/"
    @driver.bbcHomepage.clickSignIn
    @driver.bbcAccountPage.clickSignOut
  end

  it "should display an error for blank username and password" do
    @driver.bbcLoginPage.visitLoginpage
    sleep 1
    @driver.bbcLoginPage.clickLogin
    sleep 1
    expect(@driver.bbcLoginPage.findBlankCredentialsErrors[0].text).to eq DETAILS_DONT_MATCH_ERROR
    expect(@driver.bbcLoginPage.findBlankCredentialsErrors[1].text).to eq MISSING_DETAILS_ERROR
    expect(@driver.bbcLoginPage.findBlankCredentialsErrors[2].text).to eq MISSING_DETAILS_ERROR
  end

  it "should display an error for incorrect username, no password" do
    @driver.bbcLoginPage.visitLoginpage
    sleep 1
    @driver.bbcLoginPage.insertEmail INVALID_USERNAME
    @driver.bbcLoginPage.clickLogin
    sleep 1
    expect(@driver.bbcLoginPage.findBlankCredentialsErrors[0].text).to eq DETAILS_DONT_MATCH_ERROR
    expect(@driver.bbcLoginPage.findBlankCredentialsErrors[1].text).to eq MISSING_DETAILS_ERROR
  end

  it "should display an error for incorrect username, valid password" do
    @driver.bbcLoginPage.visitLoginpage
    sleep 1
    @driver.bbcLoginPage.insertEmail INVALID_USERNAME
    @driver.bbcLoginPage.insertPassword VALID_PASSWORD
  end

  it "should display an error for short password" do
    pending
  end

  it "should display and error for password that does not include number" do
    pending
  end
end
