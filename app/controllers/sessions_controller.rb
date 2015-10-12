class SessionsController < ApplicationController

	def create
		professional = Professional.find_by(email: params[:session][:email])
		
		if professional && professional.authenticate(params[:session][:password])
			session[:professional_id] = professional.id
			redirect_to dashboard_path
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