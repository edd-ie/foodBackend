class FavFoodsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable
  
    def index
      fav_foods = FavFood.all
      render json: fav_foods
    end
  
    def show
      render json: @fav_food, status: :ok
    end
  
    def create
      @fav_food = FavFood.new(fav_food_params)
  
      if @fav_food.save
        render json: @fav_food, status: :created
      else
        render json: { errors: @fav_food.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      if @fav_food.update(fav_food_params)
        render json: @fav_food, status: :accepted
      else
        render json: { errors: @fav_food.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @fav_food.destroy
      head :no_content
    end
  
    private
  
    def set_fav_food
      @fav_food = FavFood.find(params[:id])
    end
  
    def fav_food_params
      params.require(:fav_food).permit(:customer_id, :food_id)
    end
  
    def no_records
      render json: { error: 'FavFood not found' }, status: :not_found
    end
  
    def unprocessable(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
  