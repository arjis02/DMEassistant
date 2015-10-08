class DmesController < ApplicationController

	def new
		@dme = Dme.new
	end

	def create
		dme = Dme.new(dme_params)

		if dme.save
			redirect_to login_path
		else
			flash[:error] = dme.errors.full_messages
			redirect_to new_dme_path
		end
	end

	private

	def dme_params
		params.require(:dme).permit(:name, :street_address, :city, :state, :zipcode, :insurances)
	end
end