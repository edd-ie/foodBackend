class StaffsController < ApplicationController
    before_action :set_staff, only: [:show, :edit, :update, :destroy]
  
    def index
      @staffs = Staff.all
      render json: @staffs
    end
  
    def show
      render json: @staff
    end
  
    def new
      @staff = Staff.new
    end
  
    def create
      @staff = Staff.new(staff_params)
      if @staff.save
        redirect_to staff_path(@staff), notice: 'Staff member was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @staff.update(staff_params)
        redirect_to staff_path(@staff), notice: 'Staff member was successfully updated.'
      else
        render :edit
      end
    end
  
    def destroy
      @staff.destroy
      redirect_to staffs_path, notice: 'Staff member was successfully deleted.'
    end
  
    private
  
    def set_staff
      @staff = Staff.find_by(id: params[:id])
      redirect_to staffs_path, alert: 'Staff member not found.' unless @staff
    end
  
    def staff_params
      params.require(:staff).permit(:name, :email, :password, :password_confirmation, :tittle, :restaurant_id)
    end
  end
  