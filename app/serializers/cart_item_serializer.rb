class CartItemSerializer < ActiveModel::Serializer
  attributes :id, :cart_id, :item_id
end

# here belongs_to would make all the difference
# attributes :id, :item
# belongs_to :cart
# belongs_to :item
