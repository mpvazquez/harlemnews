require 'spec_helper'

describe User do
  let!(:user) {FactoryGirl.create(:user)}

  it {should have_many(:votes).through(:scores).scource(:stories)}

  it {should have_many(:stories)}
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:email)}
  it {should validate_uniqueness_of(:email)}
  it {should validate_uniqueness_of(:username)}
end
