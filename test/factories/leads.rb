FactoryBot.define do
  factory :lead do
    name { Faker::Name.name }
    email { Faker::Internet.email(name: name) }
    phone { Faker::PhoneNumber.phone_number }
    company { Faker::Company.name }
    description { Faker::Lorem.paragraph }
    source { Faker::Company.industry }
  end
end
