class Order < ActiveRecord::Base
	belongs_to :patient
	belongs_to :professional
	belongs_to :facility
	belongs_to :provider

	has_one :wheelchair
	has_one :bed
end