class Food < ApplicationRecord
    belongs_to :restaurant
    has_many :orders
    has_many :fav_foods

    
end
