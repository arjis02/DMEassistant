class ProfessionalsController < ApplicationController
  def new
    @professional = Professional.new
  end

  def create
    if params[:is_physician] == '1'
      updated_params = professional_params.merge(is_physician: true)
    else
      updated_params = professional_params.merge(is_physician: false)
    end

    professional = Professional.new(updated_params)

    if professional.save
      redirect_to '/'
    else
      flash[:error] = professional.errors.full_messages
      redirect_to new_professional_path
    end
  end

  private

  def professional_params
    params.require(:professional).permit(:first_name, :last_name, :email, :specialty, :registered_state, :phone_number, :license_number, :is_physician, :password)
  end
end
