class OrdersController < ApplicationController
	def new
		patient = Patient.find(session[:patient_id])
		@order = Order.new()
	end

	def create
		order = Order.new()

		if order.save
			session[:order] = Order.find(@order.id)
			redirect_to new_wheelchair_path
		else
			flash[:error] = order.errors.full_messages
			redirect_to new_order_path
		end
	end

	private

	def order_params
		params.require(:order).permit(:items, :is_approved, :professional_id, :patient_id, :provider_id, :date_delivered, :date_approved, :facility_id, :is_delivered)
	end
end