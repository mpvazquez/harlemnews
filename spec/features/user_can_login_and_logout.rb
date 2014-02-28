require 'spec_helper'

describe "user can login and logout of their account" do
   let!(:user) {FactoryGirl.create :user}

  it "allows user to login or logout of their account" do
    visit root_path
    click_link "Login"

    fill_in(:username, with: user.username)
    fill_in(:password, with: user.password)

    click_button "Log in"

    expect(page).to have_content(user.username)
    expect(page).not_to have_content("Login")

    click_link "Logout"

    expect(page).to have_content("Login")
  end
end