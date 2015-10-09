class Employment < ActiveRecord::Base
	belongs_to :facility
	belongs_to :professional
end