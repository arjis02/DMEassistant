class Patient < ActiveRecord::Base
	has_many :orders

	def is_active?
		discharge_date > DateTime.now
	end

end