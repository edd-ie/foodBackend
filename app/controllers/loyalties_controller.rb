class LoyaltiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable





    
    private

    def finder
        Loyalty.find(params[:id])
    end

    def valid_params
        params.permit(:id, :amount, :restaurant_id, :customer_id, :used)
    end

    def no_records
        render json: {error: 'Record not found'}, status: :not_found
    end

    def unprocessable(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
