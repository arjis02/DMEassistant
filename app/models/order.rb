class Order < ActiveRecord::Base
	belongs_to :patient
	belongs_to :physician
	belongs_to :therapist
	belongs_to :facility
	belongs_to :wheelchair
	belongs_to :bed
	belongs_to :dme
end