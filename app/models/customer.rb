class Customer < ApplicationRecord
    has_secure_password
    has_many :orders
    has_many :order_tracks
    has_many :fav_foods
    has_many :fav_restaurants

    validates :username, :email, uniqueness: true, presence: true
    validates :password, :password_confirmation, :phone, presence: true
    validates :policy, acceptance: { accept: [true, 'yes'] }

end
