class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :phone, :policy, :picture, :pay_bill, :till_num, :acc_num, :ambience, :price_range, :cuisine, :picture, :latitude, :longitude
end
