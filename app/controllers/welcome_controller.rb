class WelcomeController < ApplicationController
	def index
		redirect_to dashboard_path if session[:professional_id]
	end
end