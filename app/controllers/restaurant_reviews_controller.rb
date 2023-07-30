class RestaurantReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable
  
    def index
      restaurant_reviews = RestaurantReview.all
      render json: restaurant_reviews
    end
  
    def show
      render json: @restaurant_review, status: :ok
    end
  
    def create
      @restaurant_review = RestaurantReview.new(restaurant_review_params)
  
      if @restaurant_review.save
        render json: @restaurant_review, status: :created
      else
        render json: { errors: @restaurant_review.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      if @restaurant_review.update(restaurant_review_params)
        render json: @restaurant_review, status: :accepted
      else
        render json: { errors: @restaurant_review.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @restaurant_review.destroy
      head :no_content
    end
  
    def like
      @restaurant_review.increment!(:likes)
      render json: @restaurant_review, status: :ok
    end
  
    def dislike
      @restaurant_review.increment!(:dislikes)
      render json: @restaurant_review, status: :ok
    end
  
    private
  
    def set_restaurant_review
      @restaurant_review = RestaurantReview.find(params[:id])
    end
  
    def restaurant_review_params
      params.require(:restaurant_review).permit(:comment, :restaurant_id, :customer_id, :likes, :dislikes)
    end
  
    def no_records
      render json: { error: 'Restaurant Review not found' }, status: :not_found
    end
  
    def unprocessable(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
  
