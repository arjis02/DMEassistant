module ApplicationHelper
	def current_user
		user = session[:professional_id] ? Professional.find(session[:professional_id]) : nil
	end

	def current_facility
		facility = session[:facility_id] ? Facility.find(session[:facility_id]) : nil
	end
end
