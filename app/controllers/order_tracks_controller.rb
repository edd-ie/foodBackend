class OrderTracksController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable





    
    private

    def finder
        OrderTrack.find(params[:id])
    end

    def valid_params
        params.permit(:id, :order_id, :restaurant_id, :staff_id, :chef_id, :paid, :complete)
    end

    def no_records
        render json: {error: 'OrderTrack not found'}, status: :not_found
    end

    def unprocessable(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
