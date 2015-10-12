class WelcomeController < ApplicationController
	def index
		redirect_to '/dashboard' if session[:professional_id]
	end
end