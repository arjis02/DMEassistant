class WheelchairsController < ApplicationController
  def new
    @wheelchair = Wheelchair.new
  end

  def create
    @order = Order.create
    @wheelchair = Wheelchair.new(wheelchair_params)
    @order.wheelchair = @wheelchair

    if @wheelchair.save
      render '/orders/show'
    else
      flash[:error] = wheelchair.errors.full_messages
      redirect_to new_order_path
    end
  end

  private

  def wheelchair_params
    params.require(:wheelchair).permit(:wc_type, :front_riggings, :arms)
  end
end
