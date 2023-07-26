class Restaurant < ApplicationRecord
    has_secure_password
    has_many :foods
    has_many :orders
    has_many :fav_restaurants
    has_many :inventories
    has_many :loyalties
    has_many :staffs
    has_many :order_tracks

    validates :name, :email, :phone, 
    :pay_bill, :till_num, :acc_num, :ambience, 
    :price_range, :cuisine, :picture, :latitude, 
    :longitude, presence: true

    validates :policy, acceptance: { accept: [true, 'yes'] }

    validates :email, uniqueness: true
end
