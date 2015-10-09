class PatientsController < ApplicationController

	def index
		@patients = Patient.all
	end

	def show
		@patients = Patient.all
	end

	def new
		@patient = Patient.new
	end

	def create
		patient = Patient.new(patient_params)

		if patient.save
			redirect_to dashboard_therapists_path if session[:therapist_id]
			redirect_to dashboard_physicians_path if session[:physician_id]
		else
			flash[:error] = patient.errors.full_messages
			redirect_to new_patient_path
		end
	end

	private

	def patient_params
		params.require(:patient).permit(:first_name, :last_name, :email, :street_address, :city, :state, :zipcode, :phone_number, :height, :weight, :notes, :gender, :birthday, :discharge_date)
	end

end