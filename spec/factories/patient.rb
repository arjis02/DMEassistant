FactoryGirl.define do 
	factory :patient do
		first_name { Faker::Name.first_name }
		last_name { Faker::Name.last_name }
		email { Faker::Internet.email }
		street_address { Faker::Address.street_address }
		city { Faker::Address.city }
		state { Faker::Address.state_abbr }
		zipcode { Faker::Address.zip_code }
		phone_number { Faker::PhoneNumber.phone_number }
		height { Faker::Number.number(2) }
		weight { Faker::Number.number(3) }
		birthday { Faker::Date.between(10000.days.ago, 15000.days.ago) }
		gender { ["M", "F"].sample }
		discharge_date { Faker::Date.forward(5) }
	end
end