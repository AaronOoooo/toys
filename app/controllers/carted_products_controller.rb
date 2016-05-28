class CartedProductsController < ApplicationController

  def index
    @carted_toys = CartedProduct.all
    cart_products.status.each 
  end

  def create

    @carted_toy = CartedProduct.new(
    user_id: current_user.id,
    quantity: params[:quantity],
    product_id: params[:product_id],
    status: "carted"
    )

  end

end
