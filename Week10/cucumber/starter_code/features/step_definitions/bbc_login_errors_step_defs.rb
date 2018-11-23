Given(/^I am on the BBC home page$/) do
  bbc_homepage.visit_home_page
  expect(current_url).to eq "https://www.bbc.co.uk/"
end

And(/^I move to the sign in page$/) do
  bbc_homepage.sign_in_link
end

When(/^I proceed to register$/) do
  bbc_sign_in_page.click_register_link
end

And(/^I select I am over 13$/) do
  bbc_register_page.select_over_thirteen
end

And(/^I input my DOB$/) do
  bbc_register_page.enter_DOB("08", "april", "1996")
  bbc_register_page.click_next_button
end

And(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_register_page.fill_in_email "test@spartaglobal.com"
  bbc_register_page.fill_in_password password
  bbc_register_page.password_field.send_keys :tab
end

Then(/^I receive the corresponding error (.*)$/) do |error_message|
  expect(bbc_register_page.check_error_message).to eq error_message
end
