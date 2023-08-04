class InventoriesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable
  
    def index
      inventories = Inventory.all
      render json: inventories
    end
  
    def show
      inventory = finder
      render json: inventory, status: :ok
    end
  
    def create
      inventory = Inventory.create!(inventory_params)
      render json: inventory, status: :created
    end
  
    def update
      inventory = finder
      inventory.update!(inventory_params)
      render json: inventory, status: :accepted
    end
  
    def destroy
      finder.destroy
      head :no_content
    end
  
    private
  
    def finder
      Inventory.find(params[:id])
    end
  
    def inventory_params
      params.permit(:item, :restaurant_id, :quantity)
    end
  
    def no_records
      render json: { error: 'Inventory not found' }, status: :not_found
    end
  
    def unprocessable(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
  
