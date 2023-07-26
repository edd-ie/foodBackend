class FavRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :restaurant_id

  belongs_to :restaurant
  belongs_to :customer
end