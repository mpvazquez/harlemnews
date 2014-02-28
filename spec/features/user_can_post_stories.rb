require 'spec_helper'

describe "User can post new stories" do
  let!(:user) {FactoryGirl.create :user}

  it "lets user post new stories" do
    visit root_path
    expect(page).not_to have_content("Post")
    visit new_user_story_path
    expect(page).to have_content("HOME")


    login(user)
    visit root_path
    expect(page).to have_content("Post")
    click_link "Post"


    fill_in(:url, with: "http://www.google.com")

    click_button "Post"

    expect(page).to have_content("Google")
    expect(page).to have_content(user.username)
  end

  def login(user)
    visit "/login"
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_button "Log in"
  end
end
