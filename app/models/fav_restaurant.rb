class FavRestaurant < ApplicationRecord
    belongs_to :restaurant
    belongs_to :customer
  
    # Custom validation to ensure that a restaurant can only be added once as a favorite by a customer
end
