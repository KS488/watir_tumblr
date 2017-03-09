require 'spec_helper'
require 'rspec'


describe 'Tumblr' do
#   it "Should login with correct details" do
#     login("waltrauto98@gmail.com", "bandk123")
#     expect(@browser.url).to eq "https://www.tumblr.com/dashboard"
#   end

   it "Should not login with incorrect details" do
    login("waltrauto98aaa@gmailaf.com", "bandk123")
    expect (@browser.li(class: 'error')).to eq "That's not a valid email address. Please try again."
    # expect(@browser.code).to eq (401)
  end


  # it "Should post a text post" do
  #  login
  # end
# end

end
