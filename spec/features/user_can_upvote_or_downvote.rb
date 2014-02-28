require 'spec_helper'

describe "users can upvote links or downvote them " do

  let!(:user) {FactoryGirl.create :user}
  let!(:story) {FactoryGirl.create :story}

  it "allows users to upvote/downvote" do

    login(user)

    visit root_path


    click_button "Thumbs Up"

    expect(page).not_to have_content("Thumbs Up")
    expect(page).not_to have_content("Thumbs Down")

  end

  def login(user)
    visit "/login"
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_button "Log in"
  end
end