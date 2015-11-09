class EmploymentsController < ApplicationController
  def create
    professional = Professional.find(session[:professional_id])
    facility = Facility.find(params[:employments][:facility_id])

    relationship = Employment.new(professional_id: professional.id, facility_id: facility.id)
    if relationship.save
      redirect_to dashboard_path
    else
      flash[:error] = relationship.errors.full_messages
      redirect_to facility_path(facility)
    end
  end

  def destroy
  end
end
