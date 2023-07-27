class Customer < ApplicationRecord
    has_secure_password
    has_many :orders, dependent: :destroy
    has_many :order_tracks, dependent: :destroy
    has_many :fav_foods, dependent: :destroy
    has_many :fav_restaurants, dependent: :destroy
    has_many :order_tracks, through: :orders

    validates :username, :email, uniqueness: true, presence: true
    validates :password, :password_confirmation, :phone, presence: true
    validates :policy, acceptance: { accept: [true, 'yes'] }

    def orders
        customer = Customer.find(self.id)
        customer.orders.all.where(status: "pending")
    end
end
