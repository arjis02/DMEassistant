FactoryGirl.define do
  factory :provider do
    name { Faker::Company.name }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zipcode { Faker::Address.zip_code }
    phone_number { Faker::PhoneNumber.phone_number }
    email { Faker::Internet.email }
    insurances { 'Aetna, Medicare, BCBS' }
    password { 'password' }
  end
end
