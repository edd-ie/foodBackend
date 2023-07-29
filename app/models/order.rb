class Order < ApplicationRecord
    serialize :items, Array
    serialize :food_id, Array
    has_one :order_track, dependent: :destroy
    belongs_to :customer
    belongs_to :restaurant

    #get array of items & food_ids from Front
end
