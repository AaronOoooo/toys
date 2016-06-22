class CartedProductsController < ApplicationController

  def index
    if user_signed_in?
      @carted_toys = current_user.carted_items
    else 
      flash[:info] = "Why don't you add some items in your cart?"
      redirect_to '/'
    end 
  end

  def create
    @carted_toy = CartedProduct.new(
    user_id: current_user.id,
    quantity: params[:quantity],
    product_id: params[:product_id],
    status: "carted"
    )

    flash[:success] = 'Item added to cart'
    redirect_to 'cart'
  end

  private 
  def authenticate_admin!
    
  end

end
