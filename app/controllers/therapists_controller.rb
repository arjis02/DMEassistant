class TherapistsController < ApplicationController

	def new
		@therapist = Therapist.new
	end

	def create
		therapist = Therapist.new(therapist_params)

		if therapist.save
			redirect_to '/'
		else
			flash[:error] = therapist.errors.full_messages
			redirect_to new_therapist_path
		end
	end

	private

	def therapist_params
		params.require(:therapist).permit(:first_name, :last_name, :email, :specialty, :registered_state, :phone_number, :license_number)
	end
end