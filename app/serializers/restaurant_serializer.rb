class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :phone, :policy, :picture, :location, :paybill, :tillnum, :accountNumber, :ambience, :picture
end
