# require './waltr.rb'
require 'rspec'
require 'watir'

def login(email, pass)
@browser = Watir::Browser.new :chrome
@browser.goto 'http://tumblr.com/'

#clicks on log in button on home page
  @browser.button(id: 'signup_login_button').click
#click on email form
  @browser.div(id: 'signup_determine').click
#text box input
  @browser.send_keys(email)
#click next after entering email add
  @browser.span(class: 'signup_determine_btn').click
#yahoo sign in page 'click next'
  @browser.button(id:'login-signin').click
  sleep 5
#password entering password and clicking sign in
  @browser.send_keys(pass)
  @browser.button(id:'login-signin').click
  sleep 5
#log out


##### Main page testing #####
end

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|

    mocks.verify_partial_doubles = true
  end


  config.shared_context_metadata_behavior = :apply_to_host_groups


end
