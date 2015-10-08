class Employment < ActiveRecord::Base
	belongs_to :facility
	belongs_to :therapist
	belongs_to :physician
end