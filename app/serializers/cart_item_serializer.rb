class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :cart_id, :item_id, :quantity, :item
  belongs_to :cart
  belongs_to :item
end

# def itemInfo
#   same_items_in_cart = CartItem.where(cart_id: self.cart_id, item_id: self.item_id)
#   self.item.to_h.merge({:cart_item_id => self.id, :quantity => same_items_in_cart.count})
# end

# here belongs_to would make all the difference
# attributes :id, :item
# belongs_to :cart
# belongs_to :item

# {item: @cart_item.item.to_h.merge({:cart_item_id => @cart_item.id, :quantity => same_items_in_cart.count}), cartitem: @cart_item}
