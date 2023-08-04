class FavFoodsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable

    def index
        fav_restaurants = FavFood.all
        render json: fav_restaurants, status: :ok
    end

    def show
        render json: finder, status: :ok
    end

    def destroy
        finder.destroy
        head :no_content
    end



    private

    def finder
        FavFood.find(params[:id])
    end

    def valid_params
        params.permit(:id, :customer_id, :food_id)
    end

    def no_records
        render json: {error: 'Record not found'}, status: :not_found
    end

    def unprocessable(invalid)
        render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
