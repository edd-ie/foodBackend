class RestaurantReview < ApplicationRecord
    belongs_to :restaurant
    belongs_to :customer

    validates :comment, :restaurant_id, :customer_id,  presence: true
    validates :likes, :dislikes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
