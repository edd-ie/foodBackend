class Staff < ApplicationRecord



    belongs_to :restaurant
    has_secure_password
    has_many :order_tracks
  
    # Validations
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
   


  end
  