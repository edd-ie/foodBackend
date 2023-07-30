class FoodReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :no_records
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable
  
    def index
      food_reviews = FoodReview.all
      render json: food_reviews
    end
  
    def show
      render json: @food_review, status: :ok
    end
  
    def create
      @food_review = FoodReview.new(food_review_params)
  
      if @food_review.save
        render json: @food_review, status: :created
      else
        render json: { errors: @food_review.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      if @food_review.update(food_review_params)
        render json: @food_review, status: :accepted
      else
        render json: { errors: @food_review.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def destroy
      @food_review.destroy
      head :no_content
    end
  
    def like
      @food_review.increment!(:likes)
      render json: @food_review, status: :ok
    end
  
    def dislike
      @food_review.increment!(:dislikes)
      render json: @food_review, status: :ok
    end
  
    private
  
    def set_food_review
      @food_review = FoodReview.find(params[:id])
    end
  
    def food_review_params
      params.require(:food_review).permit(:comment, :food_id, :customer_id, :likes, :dislikes)
    end
  
    def no_records
      render json: { error: 'Food Review not found' }, status: :not_found
    end
  
    def unprocessable(invalid)
      render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
  
