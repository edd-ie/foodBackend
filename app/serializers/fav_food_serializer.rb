class FavFoodSerializer < ActiveModel::Serializer
  attributes :id, :customer_id, :food_id

  belongs_to :customer
  belongs_to :food
end
