# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
       url {Faker::Internet.http_url}
       

  end
end
