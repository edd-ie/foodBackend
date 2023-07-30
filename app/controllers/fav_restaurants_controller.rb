class FavRestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :no_records
  rescue_from ActiveRecord::RecordInvalid, with: :unprocessable
    


    def index
      res = FavRestaurant.all
      render json: res, status: :ok
    end
    # POST /fav_restaurants
    def create
      res = FavRestaurant.create!(valid_params)
      render json: res, status: :created
    end
  
    # DELETE /fav_restaurants
    def destroy
      finder.destroy
      head :no_content
    end
  
    private

    def finder
        FavRestaurant.find(params[:id])
    end

    def valid_params
        params.permit(:id, :customer_id, :restaurant_id)
    end

    def no_records
        render json: {error: 'FavRestaurant not found'}, status: :not_found
    end

    def unprocessable(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
  end
  