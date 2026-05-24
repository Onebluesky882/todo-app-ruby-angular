class Api::V1::CartsController < ApplicationController

  # GET /api/v1/cart/:user_id
  def show
    cart = CartService.get_cart(params[:user_id])

    render json: cart
  end

  # POST /api/v1/cart/add_item
  def add_item

  cart = CartService.add_to_cart(

    params[:user_id],

    params[:product],

    params[:qty].to_i

  )

  render json: cart

end

  # DELETE /api/v1/cart/remove_item
  def remove_item

    cart = CartService.remove_item(
      params[:user_id],
      params[:product_id]
    )

    render json: cart
  end

  # PATCH /api/v1/cart/checkout/:id
  def checkout
    cart = CartService.checkout( 
      params[:cart_id],
      params[:user_id]
    )
    render json: cart
  end


   def remove_from_cart

  cart = CartService.remove_from_cart(

    params[:user_id],

    params[:cart_id],

    params[:product_id]

  )

  render json: cart

end
end