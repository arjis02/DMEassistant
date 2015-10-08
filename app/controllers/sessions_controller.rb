class SessionsController < ApplicationController

	def create
		physician = Physician.find_by(email: params[:session][:email])
		therapist = Therapist.find_by(email: params[:session][:email])
		dme = Dme.find_by(email: params[:session][:email])
		
		if physician && physician.authenticate(params[:session][:password])
			session[:physician_id] = physician.id
			redirect_to dashboard_physicians_path
		elsif therapist && therapist.authenticate(params[:session][:password])
			session[:therapist_id] = therapist.id
			redirect_to dashboard_therapists_path
		elsif dme && dme.authenticate(params[:session][:password])
			session[:dme_id] = dme.id 
			redirect_to dashboard_dmes_path
		else
			flash[:error] = ["Unsuccessful Login"]
			redirect_to '/'
		end
	end

	def destroy
		session.clear
		redirect_to '/'
	end

end