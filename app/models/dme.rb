class Dme < ActiveRecord::Base
	has_many :beds
	has_many :wheelchairs
	has_many :orders
end