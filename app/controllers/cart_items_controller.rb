class CartItemsController < ApplicationController

## when you do add to cart we need to create an item for the cart

  def create
    @cart_item = CartItem.create(cart_item_params)
    render json: @cart_item
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy

    render json: {message: "there is no item in the cart", cart_item: @cart_item}
  end

private

def cart_item_params
  params.permit(:cart_id, :item_id)
end

end
