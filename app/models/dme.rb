class Dme < ActiveRecord::Base
	has_secure_password

	has_many :beds
	has_many :wheelchairs
	has_many :orders
end