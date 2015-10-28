class WheelchairsController < ApplicationController
	def new
		@wheelchair = Wheelchair.new()
	end

	def create
		@wheelchair = Wheelchair.new(wheelchair_params)

		if @wheelchair.save
			render "order/show"
		else
			flash[:error] = wheelchair.errors.full_messages
			redirect_to new_order_path
		end
	end

	private

	def wheelchair_params
		params.require(:wheelchair).permit(:type, :front_riggings, :arms, :order_id)
	end
end