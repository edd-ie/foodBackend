class FoodReview < ApplicationRecord
    belongs :food
    belongs :customer

    validates :comment, :food_id, :customer_id,  presence: true
    validates :likes, :dislikes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
