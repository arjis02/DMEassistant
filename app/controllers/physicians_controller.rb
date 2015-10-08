class PhysiciansController < ApplicationController

	def new
		@physician = Physician.new
	end

	def create
		physician = Physician.new(physician_params)

		if physician.save
			redirect_to login_path
		else
			flash[:error] = physician.errors.full_messages
			redirect_to physician_signup_path
		end
	end

	private

	def physician_params
		params.require(:physician).permit(:first_name, :last_name, :email, :specialty, :registered_state, :phone_number, :license_number)
	end
end