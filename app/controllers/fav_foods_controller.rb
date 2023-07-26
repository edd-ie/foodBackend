class FavFoodsController < ApplicationController
    # app/controllers/fav_foods_controller.rb
class FavFoodsController < ApplicationController
    before_action :set_fav_food, only: [:show, :edit, :update, :destroy]
  
    def index
      @fav_foods = FavFood.all
    end
  
    def show
    end
  
    def new
      @fav_food = FavFood.new
    end
  
    def create
      @fav_food = FavFood.new(fav_food_params)
  
      if @fav_food.save
        redirect_to @fav_food, notice: 'FavFood was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @fav_food.update(fav_food_params)
        redirect_to @fav_food, notice: 'FavFood was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @fav_food.destroy
      redirect_to fav_foods_url, notice: 'FavFood was successfully destroyed.'
    end
  
    private
  
    def set_fav_food
      @fav_food = FavFood.find(params[:id])
    end
  
    def fav_food_params
      params.require(:fav_food).permit(:customer_id, :food_id)
    end
  end
  
end
