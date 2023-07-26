class OrderTrackSerializer < ActiveModel::Serializer
  attributes :id, :status, :order_id, :restaurant_id, :staff_id, :chef_id, :paid, :complete
end
