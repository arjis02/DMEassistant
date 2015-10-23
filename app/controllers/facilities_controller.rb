class FacilitiesController < ApplicationController
	def index
		@facilities = Facility.all
	end

	def show
		@facility = Facility.find(params[:id])
		session[:facility_id] = @facility.id
	end
end