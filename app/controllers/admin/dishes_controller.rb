class Admin::DishesController < ApplicationController
  before_action :set_admin_dish, only: [:show, :edit, :update, :destroy]

  # GET /admin/dishes
  # GET /admin/dishes.json
  def index
    @dishes = Dish.all
  end

  # GET /admin/dishes/1
  # GET /admin/dishes/1.json
  def show
  end

  # GET /admin/dishes/new
  def new
    @admin_dish = Dish.new
  end

  # GET /admin/dishes/1/edit
  def edit
  end

  # POST /admin/dishes
  # POST /admin/dishes.json
  def create
    @admin_dish = Admin::Dish.new(admin_dish_params)

    respond_to do |format|
      if @admin_dish.save
        format.html { redirect_to @admin_dish, notice: 'Dish was successfully created.' }
        format.json { render :show, status: :created, location: @admin_dish }
      else
        format.html { render :new }
        format.json { render json: @admin_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/dishes/1
  # PATCH/PUT /admin/dishes/1.json
  def update
    respond_to do |format|
      if @admin_dish.update(admin_dish_params)
        format.html { redirect_to @admin_dish, notice: 'Dish was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_dish }
      else
        format.html { render :edit }
        format.json { render json: @admin_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/dishes/1
  # DELETE /admin/dishes/1.json
  def destroy
    @admin_dish.destroy
    respond_to do |format|
      format.html { redirect_to admin_dishes_url, notice: 'Dish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_dish
      @admin_dish = Admin::Dish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_dish_params
      params.fetch(:admin_dish, {})
    end
end
