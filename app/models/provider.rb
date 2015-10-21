class Provider < ActiveRecord::Base
	has_secure_password

	has_many :orders

	validates :email, uniqueness: true
end