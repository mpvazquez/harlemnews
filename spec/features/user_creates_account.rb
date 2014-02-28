require 'spec_helper'

describe "user can create an account" do
  let!(:user) {FactoryGirl.create :user}

  it "takes you to user new page" do
    visit root_path
    click_link 'Join Us'

    fill_in('username', with: user.username)
    fill_in('password', with: user.password)
    fill_in('password_confirmation', with: user.password)
    fill_in('email', with: user.email)

    click_button 'Join'

    expect(page).to have_content(user.username)
  end
end