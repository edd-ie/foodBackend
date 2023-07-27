class RestaurantReviewsController < ApplicationController
    before_action :set_restaurant_review, only: [:show, :update, :destroy]
  
    # GET /restaurant_reviews
    def index
      @restaurant_reviews = RestaurantReview.all
      render json: @restaurant_reviews
    end
  
    # GET /restaurant_reviews/:id
    def show
      render json: @restaurant_review
    end
  
    # POST /restaurant_reviews
    def create
      @restaurant_review = RestaurantReview.new(restaurant_review_params)
      if @restaurant_review.save
        render json: @restaurant_review, status: :created
      else
        render json: @restaurant_review.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /restaurant_reviews/:id
    def update
      if @restaurant_review.update(restaurant_review_params)
        render json: @restaurant_review
      else
        render json: @restaurant_review.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /restaurant_reviews/:id
    def destroy
      @restaurant_review.destroy
      render json: { message: "Restaurant review deleted successfully" }
    end
  
    private
  
    def set_restaurant_review
      @restaurant_review = RestaurantReview.find(params[:id])
    end
  
    def restaurant_review_params
      params.require(:restaurant_review).permit(:comment, :restaurant_id, :customer_id, :likes, :dislikes)
    end
  end
  