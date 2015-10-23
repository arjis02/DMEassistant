FactoryGirl.define do
	factory :professional do
		first_name { Faker::Name.first_name }
		last_name { Faker::Name.last_name }
		email { Faker::Internet.email }
		specialty { ["physical", "occupational", "general", "internal"].sample }
		license_number { Faker::Number.number(8) }
		registered_state { Faker::Address.state_abbr }
		phone_number { Faker::PhoneNumber.phone_number }
		password { "password" }
		is_physician { [true,false].sample }
	end
end