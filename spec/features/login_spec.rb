require 'spec_helper'

feature "login" do
  scenario "with correct password" do
    user = FactoryGirl.create(:user)

    visit login_path
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password

    click_on "Login"

  end
end

# SAME THING!

# feature "login" do
#   scenario "with correct password" do

#   end
# end
