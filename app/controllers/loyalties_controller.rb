class LoyaltiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable
  
    def index
      @loyalties = Loyalty.all
      render json: @loyalties
    end
  
    def show
      @loyalty = finder
      render json: @loyalty
    end
  
    def create
      @loyalty = Loyalty.new(valid_params)
      if @loyalty.save
        render json: @loyalty, status: :created
      else
        render json: { errors: @loyalty.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      @loyalty = finder
      if @loyalty.update(valid_params)
        render json: @loyalty
      else
        render json: { errors: @loyalty.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @loyalty = finder
      @loyalty.destroy
      head :no_content
    end
  
    private
  
    def finder
      Loyalty.find(params[:id])
    end
  
    def valid_params
      params.permit(:amount, :restaurant_id, :customer_id, :used)
    end
  
    def no_records
      render json: { error: 'Record not found' }, status: :not_found
    end
  
    def unprocessable(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
  end
  