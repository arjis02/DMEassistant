class WelcomeController < ApplicationController
	def index
		redirect_to dashboard_physicians_path if session[:physician_id] 
		redirect_to dashboard_therapists_path if session[:therapist_id]
		redirect_to dashboard_dmes_path if session[:dme_id]
	end
end