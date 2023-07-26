class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :discount, :restaurant_id, :vegeterian, :allergen, :ingredients, :category, :picture
end
