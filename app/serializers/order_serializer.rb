class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_items, :orders
  has_many :items

  def orders
# byebug
    self.object
  end
end
