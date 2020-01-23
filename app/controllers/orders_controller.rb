class OrdersController < ApplicationController
  def index
  end
  
  def create
    pry
    @order = current_user.order.build(order_params)
    @current_tray.line_items.each do |item|
      @order.line_items << item
      item.tray_id = nil
    end
    pry
    respond_to do |format|
      if @order.save!
        Tray.destroy(session[:tray_id])
        session[:tray_id] = nil
        format.html { redirect_to thank_you_path }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def new
    @order = Order.new
  end
  
  private
  def order_params
    params.require(:order).permit(:name, :email, :address, :pickup_time, :first_name, :last_name, :address_line_1, :address_line_2, :province, :city, :mobile_number, :zip, :note)
  end
end
