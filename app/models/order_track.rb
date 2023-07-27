class OrderTrack < ApplicationRecord
    has_one :order
    belongs_to :staff
    belongs_to :restaurant
end
