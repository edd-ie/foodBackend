class Staff < ApplicationRecord
    belongs_to :restaurant
    has_many :order_tracks
  
    # Validations
    validates :name, :title, presence: true   
  end
  