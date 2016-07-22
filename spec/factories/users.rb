FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    password "123456"
    full_name Faker::Name.name
  end
end
