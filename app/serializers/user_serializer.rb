class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :orders, :cart_items
  has_one :cart

  def cart_items
    # byebug
      self.object.cart.cart_items.map do |cart_item|

        cart_item.item.to_h.merge({:cart_item_id => cart_item.id})
    end
  end
end
