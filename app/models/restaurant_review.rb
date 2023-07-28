class RestaurantReview < ApplicationRecord
<<<<<<< HEAD
    belongs :restaurant
    belongs :customer

    validates :comment, :restaurant_id, :customer_id  presence: true
    validates :likes, :dislikes, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
=======

    belongs_to :restaurant
    belongs_to :customer

  end
>>>>>>> 45ad29afb4d55c925ddd3a1bc911ca1639b36e33
