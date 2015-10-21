class Patient < ActiveRecord::Base
	has_many :orders
end