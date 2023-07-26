class FoodsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable


    private

    def finder
        Food.find(params[:id])
    end

    def valid_params
        params.permit(:id, :name, :discount, :restaurant_id, :vegetarian, :allergen, :category,
            :sales, :ratings, :price, :ingredients, :picture)
    end

    def no_records
        render json: {error: 'Food not found'}, status: :not_found
    end

    def unprocessable(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
