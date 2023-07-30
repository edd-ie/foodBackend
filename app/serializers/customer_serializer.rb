class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :phone, :picture
end
