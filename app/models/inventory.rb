class Inventory < ApplicationRecord
    belongs_to :restaurant
    
    validates :items, :quantity, :restaurant_id, presence: true
end
