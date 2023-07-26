class CustomersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable
    
    def index
        customers = Customer.all
        render json: customers
    end

    def show
        customer = finder
        render json: customer, status: :ok
    end

    def create
        customer = Customer.create!(valid_params)
        render json: customer, status: :created
    end

    def update
        customer = finder
        customer.update!(valid_params)
        render json: customer, status: :accepted
    end

    def destroy
        finder.destroy
        head :no_content
    end


    private

    def finder
        Customer.find(params[:id])
    end

    def valid_params
        params.permit(:id, :username, :email, :password, :password_confirmation, :phone, :policy, :picture)
    end

    def no_records
        render json: {error: 'Customer not found'}, status: :not_found
    end

    def unprocessable(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
