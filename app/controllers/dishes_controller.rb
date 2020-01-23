class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def new
  end
  
  def show
  end

  def edit
  end
end
