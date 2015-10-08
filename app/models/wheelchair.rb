class Wheelchair < ActiveRecord::Base
	belongs_to :dme

	has_many :orders
end