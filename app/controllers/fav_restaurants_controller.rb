class FavRestaurantsController < ApplicationController
    before_action :set_customer
  
    # POST /fav_restaurants
    def create
      @fav_restaurant = @customer.favorite_restaurants.build(fav_restaurant_params)
  
      if @fav_restaurant.save
        render json: @fav_restaurant, status: :created
      else
        render json: @fav_restaurant.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /fav_restaurants
    def destroy
      @fav_restaurant = @customer.favorite_restaurants.find_by(id: params[:id])
      @fav_restaurant&.destroy
      head :no_content
    end
  
    private
  
    def set_customer
      @customer = Customer.find(params[:customer_id])
    end
  
    def fav_restaurant_params
      params.require(:fav_restaurant).permit(:restaurant_id)
    end
  end
  