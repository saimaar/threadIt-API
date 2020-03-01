class OrdersController < ApplicationController

  def index

    @orders = Order.all
    render json: @orders
  end

  def create
    # byebug
    # debugger
    ## Items
    user = User.find(params[:order][:user_id])
    items = user.cart.items
    ## Create Order
    @order = Order.create(user_id: user.id, address: params[:address]);
    ## Associate the Items with the Order
    items.each do |item|
        OrderItem.create(order_id: @order.id, item_id: item.id)
    end
    ## Clear the cart
    # byebug
    user.cart.cart_items.destroy_all
    render json: @order
end



end

## here on line 7, we could hacve done logged_in.cart.items only
## if we sent Authorization bearer token in the headers of the post request
##from the frontend
#when you hit "proceed to checkout button" , fetch to orders and send address and user_id in the body
#this will create orders along with order-Items / take them to order page implement
#in the fornt end , remove cart_items from the cart
