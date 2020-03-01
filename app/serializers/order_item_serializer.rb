class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id
  belongs_to :order
  belongs_to :item
  # has_many :items
end
