class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id
  has_many :items
end
