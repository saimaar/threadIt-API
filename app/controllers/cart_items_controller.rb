class CartItemsController < ApplicationController

## when you do add to cart we need to create an cartitem for the cart
## so we send a post request to the create action

  def create
    @cart_item = CartItem.create(cart_item_params)
    render json: {item: @cart_item.item.to_h.merge({:cart_item_id => @cart_item.id}), cartitem: @cart_item}
  end
## in the frontend when I send Post request here,
## cart_item gets created and the data that is being sent to the front end
## should include the cart_item_id wuth items. Hence we merge item with cart_item_id

  def destroy
    @cart_item =  CartItem.find_by(cart_id: logged_user.cart.id, item_id: params[:id])
    @cart_item.destroy
    render json: {message: "there is no item in the cart", cart_item: @cart_item}
  end

private

def cart_item_params
  params.permit(:cart_id, :item_id)
end

end
