class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_one :cart
  has_many :orders
  has_many :reviews

  ##instead of line 4 and 5 we could just add orders and reviews as an attribute
  ##on line 2

  # def cart_items
  #   # byebug
  #     self.object.cart.cart_items.map do |cart_item|
  #       cart_item
  #   end
  # end

  # def order_items
  #   self.object.orders.map do |order|
  #     order.items
  #   end
  # end
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
