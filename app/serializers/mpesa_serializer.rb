class MpesaSerializer < ActiveModel::Serializer
  attributes :id, :checkoutRequestID, :merchantRequestID, :amount, :mpesaReceiptNumber, :phoneNumber
  has_one :customer
end
