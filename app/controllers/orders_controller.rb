class OrdersController < ApplicationController

  def create
    ## Items
    items = logged_user.cart.items
    ## Create Order
    order = Order.create(user_id: logged_user.id);
    ## Associate the Items with the Order
    items.each do |item|
        OrderItem.create(order_id: order.id, item_id: item.id)
    end
    ## Clear the cart
    logged_user.cart_items.destroy_all
end



end
