class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :orders
  has_one :cart

  def cart
      self.object.cart.cart_items.map do |cart_item|
      cart_item.item
    end
  end

end
