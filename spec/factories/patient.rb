FactoryGirl.define do 
	factory :patient do
		first_name { Faker::Name.name }
		last_name { Faker::Name.name }
		email { Faker::Internet.email }
		street_address { Faker::Address.street_address }
		city { Faker::Address.city }
		state { Faker::Address.state_abbr }
		zipcode { Faker::Address.zip_code }
		phone_number { Faker::PhoneNumber.phone_number }
		birthday { Faker::Date.between(10000.days.ago, 15000.days.ago) }
		discharge_date { Faker::Date.forward(5) }
	end
end