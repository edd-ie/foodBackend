class Restaurant < ApplicationRecord
    has_secure_password
    has_many :foods, dependent: :destroy
    has_many :orders, dependent: :destroy
    has_many :fav_restaurants, dependent: :destroy
    has_many :inventories, dependent: :destroy
    has_many :loyalties, dependent: :destroy
    has_many :staffs, dependent: :destroy
    has_many :order_tracks, dependent: :destroy

    validates :name, :email, :phone, 
    :pay_bill, :till_num, :acc_num, :ambience, 
    :price_range, :cuisine, :picture, :latitude, 
    :longitude, presence: true

    validates :policy, acceptance: { accept: [true, 'yes'] }

    validates :email, uniqueness: true
end
