class LineItemsController < ApplicationController
  def create
    dish = Dish.find(params[:dish_id])
    add_items_to_tray(dish)
    respond_to do |format|
      if @line_item.save!
        format.json { head :no_content }
        format.js {}
        format.html { redirect_to root_path }
      else
        format.html { render :new, notice: 'Error adding product to basket!' }
      end
    end
  end
  
  def add_quantity
    @line_item = LineItem.find(params[:id])
    @line_item.quantity += 1
    @line_item.save
    redirect_to tray_path(@current_tray)
  end

  def reduce_quantity
    @line_item = LineItem.find(params[:id])
    if @line_item.quantity > 1
      @line_item.quantity -= 1
    end
    @line_item.save
    redirect_to tray_path(@current_tray)
  end
  
  private
  
  def add_items_to_tray(dish)
    if @current_tray.dishes.include?(dish)
      @line_item = @current_tray.line_items.find_by(dish_id: dish)
      @line_item.quantity += 1
    else
      @line_item = LineItem.new
      @line_item.tray = @current_tray
      @line_item.dish = dish
      @line_item.quantity = 1
    end
  end
end
