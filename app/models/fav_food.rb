class FavFood < ApplicationRecord
    belongs_to :customer
    belongs_to :food

    validates :customer_id, :food_id, presence: true
end
