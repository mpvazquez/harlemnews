require 'spec_helper'

describe "user can create an account" do

  let!(:user) {FactoryGirl.create :user}

  it "takes you to user new page" do
    visit root_path
    click_link "Register"

    fill_in('username', with: user.username)
    fill_in('password', with: user.password)

  end


end