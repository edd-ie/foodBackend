class LoyaltySerializer < ActiveModel::Serializer
  attributes :id, :amount, :customer_id, :restaurant_id, :used
end
