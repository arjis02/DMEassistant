class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    session[:patient_id] = @patient.id
  end

  def new
    @patient = Patient.new
  end

  def create
    facility = Facility.find(session[:facility_id])
    updated_params = patient_params.merge(gender: params[:gender])
    @patient = Patient.new(updated_params)
    facility.patients << @patient

    if @patient.save
      render 'show'
    else
      flash[:error] = patient.errors.full_messages
      redirect_to new_patient_path
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :email, :street_address, :city, :state, :zipcode, :phone_number, :height, :weight, :birthday, :discharge_date, :diagnosis, :insurance_1, :insurance_2, :notes, :gender)
  end
end
