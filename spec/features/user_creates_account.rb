require 'spec_helper'

describe "user can create an account" do

  it "takes you to user new page" do
    visit root_path
    click_link 'Join Us'
    username = Faker::Internet.user_name
    fill_in(:user_username, with: "#{username}")
    fill_in(:user_password, with: "test")
    fill_in(:user_password_confirmation, with: "test")
    fill_in(:user_email, with: "#{Faker::Internet.email}")

    click_button 'Join'

    expect(page).to have_content(username)
    expect(page).not_to have_content("Join Us")
  end
end