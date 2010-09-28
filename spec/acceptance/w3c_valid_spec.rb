require File.dirname(__FILE__) + '/acceptance_helper'

feature "W3C Validation" do

  before :all do
    Capybara.use_default_driver
    Capybara.run_server = true
  end

  scenario "HTML output is valid" do
    validate_url '/'
    validate_url '/about_us'
    validate_url '/services'
    validate_url '/contact'
  end

end
