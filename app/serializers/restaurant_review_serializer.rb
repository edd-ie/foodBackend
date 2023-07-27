class RestaurantReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :restaurant_id, :customer_id, :likes, :dislikes
end
