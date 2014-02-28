require 'spec_helper'

describe Story do
  let!(:story) {FactoryGirl.create(:story)}

  it {should belong_to(:user)}
  it {should validate_presence_of(:url)}
  it {should validate_presence_of(:user_id)}
  it {should validate_uniqueness_of(:url)}
end
