class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :cart_items, :order_items
  has_one :cart

  def cart_items
    # byebug
      self.object.cart.cart_items.map do |cart_item|
        cart_item.item.to_h.merge({:cart_item_id => cart_item.id})
    end
  end

  def order_items
    self.object.orders.map do |order|
      order.items
    end
  end
end




# 2nd way of having cart_item id inside each item instance
#Also check cart_item Serializer
# attributes :id, :username, :email, :orders
# has_one :cart
# def cart
#   # byebug
#     self.object.cart.cart_items.map do |cart_item|
#       cart_item
#   end
# end
