require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://toolsqa.com/automation-practice-form/'
  # Page field
  FIRST_NAME_FIELD =  "firstname"
  LAST_NAME_FIELD =  "lastname"
  MALE_RADIOBUTTON_ID = "sex-0"
  FEMALE_RADIOBUTTON_ID = "sex-1"
  EXPERIENCE_RADIOBUTTON =  "exp"

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD)[:value]
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD).displayed?
  end

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD).send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:name, LAST_NAME_FIELD)[:value]
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:name, LAST_NAME_FIELD).displayed?
  end

  def set_sex_radio_male_true
    @chrome_driver.find_element(:id, MALE_RADIOBUTTON_ID).click
  end

  def set_sex_radio_female_true
    @chrome_driver.find_element(:id, FEMALE_RADIOBUTTON_ID).click
  end

  def get_sex_radio_male_value
    @chrome_driver.find_element(:id, MALE_RADIOBUTTON_ID).selected?
  end

  def get_sex_radio_female_value
    @chrome_driver.find_element(:id, FEMALE_RADIOBUTTON_ID).selected?
  end

  def set_experience value
    @chrome_driver.find_elements(:name, EXPERIENCE_RADIOBUTTON)[value].click
  end

  def get_experience
    @chrome_driver.find_elements(:name, EXPERIENCE_RADIOBUTTON)
  end

  # registration confirmation - Difficulty Easy

  def click_submit
  end

  def check_registration_successful
  end
end
