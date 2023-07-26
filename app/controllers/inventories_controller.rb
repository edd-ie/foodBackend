class InventoriesController < ApplicationController
    before_action :set_inventory, only: [:show, :edit, :update, :destroy]

    def index
        @inventories = Inventory.all    
    end

    def new 
        @inventory = Inventory.new
    end

    def create
        @inventory = Inventory.new(inventory_params)@

        if @inventory.save
            redirect_to inventories_path, notice: 'Inventory was successfully created.'
          else
            render :new
        end
    end

    def show
        # The @inventory instance variable was set by the before_action :set_inventory
    end

    def edit
        # The @inventory instance variable was set by the before_action :set_inventory
    end

    def update
        if @inventory.update(inventory_params)
          redirect_to inventories_path, notice: 'Inventory was successfully updated.'
        else
          render :edit
        end
    end

    def destroy
        @inventory.destroy
        redirect_to inventories_path, notice: 'Inventory was successfully destroyed.'
    end
    
      private
    
    def set_inventory
        @inventory = Inventory.find(params[:id])
    end
    
    def inventory_params
        params.require(:inventory).permit(:item, :quantity)
    end
end
