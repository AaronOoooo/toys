class OrdersController < ApplicationController


  def create

    toy = Toys.find(params[:id])
    total - toy.price = params[:quantity]
    tax = toy.price * 0.09
    total = subtotal + tax

    @order = Order.create(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: subtotal,
    tax: tax,
    total: total
    )
    flash[:success] = "Order Created"
    redirect_to "/orders/#{@order.id}"
  end

  def show 
    @order = Order.find(params[:id])
    @toy = Toy.find(@order.toy_id)
  end
end
