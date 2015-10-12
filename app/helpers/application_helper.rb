module ApplicationHelper
	def current_user
		user = session[:professional_id] ? Professional.find(session[:professional_id]) : nil
	end
end
