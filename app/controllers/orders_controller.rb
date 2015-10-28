class OrdersController < ApplicationController
	def new
		patient = Patient.find(session[:patient_id])
		@order = Order.new()
	end

	def create
		
	end
end