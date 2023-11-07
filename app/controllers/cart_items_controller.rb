class CartItemsController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @cart_item = CartItem.new
  end

  def create
    @cart = current_cart
    @product = Product.find(params[:product_id])
    @cart_item = @cart.cart_items.build(product: @product, qty: params[:cart_item][:qty])

    if @cart_item.save
      redirect_to cart_path(@cart)
    else
      render 'new'
    end
  end

  def destroy
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path(current_cart)
  end
end