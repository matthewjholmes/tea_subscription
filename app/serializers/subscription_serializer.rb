class SubscriptionSerializer
  include JSONAPI::Serializer

  attributes :title, :price, :status, :frequency, :quantity, :customer_id, :tea_id

end
