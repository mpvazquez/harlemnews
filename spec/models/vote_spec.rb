require 'spec_helper'

describe Vote do
  let!(:story) {FactoryGirl.create(:story)}
  let!(:user) {FactoryGirl.create(:user)}

  it {should belong_to(:user)}
  it {should belong_to(:story)}

  it {should validate_presence_of(:user_id)}
  it {should validate_presence_of(:story_id)}
  it {should validate_numericality_of(:score).is_less_than(2)}
  it {should validate_numericality_of(:score).is_greater_than(-2)}
  it {should validate_uniqueness_of(:user_id).scoped_to(:story_id)}
end
