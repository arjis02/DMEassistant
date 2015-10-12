FactoryGirl.define do
	factory :facility do
		name { Faker::Company.name }
		street_address { Faker::Address.street_address }
		city { Faker::Address.city }
		state { Faker::Address.state_abbr }
		zipcode { Faker::Address.zip_code }
	end
end