class FavRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :restaurant_id
end
