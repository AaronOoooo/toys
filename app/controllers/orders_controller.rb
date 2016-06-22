class OrdersController < ApplicationController

  def create

    toy = Toys.find(params[:id])
    total - toy.price = params[:quantity]
    tax = toy.price * 0.09
    total = subtotal + tax

    @order = Order.create(user_id: current_user.id)
    ordered_items = current_user.carted_products

    ordered_items.each do | ordered_item|
        ordered_item.update(status: 'purchased', order_id: @order.id)
    end

    @order.calculate_figures(@order.carted_novelties)
    @order.update

    flash[:success] = "Order Created"
    redirect_to "/orders/#{@order.id}"
  end

  def show 
    @order = Order.find(params[:id])
    @ordered_product = @order.carted_product
  end
end
