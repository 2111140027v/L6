class CartsController < ApplicationController
  def show
    @cart = current_cart
    @cartitems = CartItem.all
  end
end