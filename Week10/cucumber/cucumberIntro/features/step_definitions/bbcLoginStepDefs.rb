SHORT_PASSWORD = "abc"
INVALID_PASSWORD = "genuinelyGoodPassword1"
INVALID_USERNAME = "jeifoaefjaf@kevin.com"

INVALID_PASSWORD_ERROR = "Uh oh, that password doesn’t match that account. Please try again."
SHORT_PASSWORD_ERROR = "Sorry, that password is too short. It needs to be eight characters or more."

# ========================================
Given("I access the bbc login page") do
  bbcHomepage.visitHomepage
  bbcHomepage.clickSignIn
  expect(current_url).to eq bbcLoginPage.loginPageUrl
end

# ========================================
When("I enter a correct username") do
  bbcLoginPage.insertEmail(bbcLoginPage.validUsername)
end

When("I enter a correct password") do
  bbcLoginPage.insertPassword(bbcLoginPage.validPassword)
end

When("I click submit") do
  bbcLoginPage.clickLogin
end

Then("I am logged in and redirected to the homepage") do
  expect(current_url).to eq "https://www.bbc.co.uk/"
end

# ========================================
Then("I am shown three separate warnings") do
  expect(bbcLoginPage.findBlankCredentialsErrors[0].text).to eq bbcLoginPage.detailsDontMatchError
  expect(bbcLoginPage.findBlankCredentialsErrors[1].text).to eq bbcLoginPage.missingDetailsError
  expect(bbcLoginPage.findBlankCredentialsErrors[2].text).to eq bbcLoginPage.missingDetailsError
end
