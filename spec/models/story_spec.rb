require 'spec_helper'

describe Story do
  it {should belong_to(:user)}
  it {should validate_presence_of(:url)}
  it {should validate_presence_of(:user_id)}
end
