require 'spec_helper'

describe "user views stories" do
  let!(:user) {FactoryGirl.create :user}
  let!(:story) {FactoryGirl.create :story, user: user}
  
  it "takes user to root path" do
    visit root_path
    expect(page).to have_content story.title
    expect(page).to have_content story.user.username
    expect(page).to have_content story.created_at
    save_and_open_page
    click_link "#{story.title}"
  end


end