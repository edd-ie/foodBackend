class Inventory < ApplicationRecord
    belongs_to :restaurant
    
    #validates :item, :quantity, :restaurant_id, presence: true
end
