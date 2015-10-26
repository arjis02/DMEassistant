class OrdersController < ApplicationController
	def new
		patient = Patient.find(params[:id])
		@order = patient.orders.new()
	end

	def create
		
	end
end