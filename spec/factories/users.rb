# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username {Faker::Internet.user_name}
    password {"test"}
    password_confirmation {"test"}
    email {Faker::Internet.email}
  end
end
