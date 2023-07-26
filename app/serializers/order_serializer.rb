class OrderSerializer < ActiveModel::Serializer
  attributes :id, :items, :discount, :latitude, :longitude, :customer_id, :restaurant_id, :food_id, :service_fee, :total
end
