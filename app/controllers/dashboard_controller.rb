class DashboardController < ApplicationController
	def show
		@professional = Professional.find(session[:professional_id])
	end
end