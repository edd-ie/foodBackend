class Customer < ApplicationRecord
    has_secure_password
    has_many :orders, dependent: :destroy
    has_many :order_tracks, dependent: :destroy
    has_many :fav_foods, dependent: :destroy
    has_many :fav_restaurants, dependent: :destroy
    has_many :order_tracks, through: :orders
    has_many :restaurant_reviews
    has_many :restaurants, through: :restaurant_reviews

    validates :username, :email, uniqueness: true, presence: true
    validates :password, :password_confirmation, :phone, presence: true
    validates :policy, acceptance: { accept: [true, 'yes'] }

    def allOrders
        customer = Customer.find(self.id)
        customer.orders.all
    end

    def activeOrders
        self.order_tracks.where(complete: false)
    end
end
