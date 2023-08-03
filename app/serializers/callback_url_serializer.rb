class CallbackUrlSerializer < ActiveModel::Serializer
  attributes :id, :transaction_type, :trans_time, :trans_amount, :bill_ref_number, :msisdn, :business_shortcode, :trans_id, :resultcode
  has_one :customer
end
