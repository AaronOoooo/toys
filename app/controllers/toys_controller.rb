class ToysController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index # REST

    @test_token = ENV['test_api_token']
    @test_secret = ENV['test_api_secret']
    @toys = Toy.all
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    sort_category = params[:category]
    
    if sort_attribute && sort_order
      @toys = Toy.order(sort_attribute => sort_order)
    else 
      @toys = Toy.all
    end

    if sort_category
      category = Category.find_by(name: sort_category)
      @toys = category.toys
    end

    discount = params[:sale]
    if discount 
      @toys = Toy.where("cost < ?", 10) 
    end

    # random_toy = params[:random]
    # random_num = rand(10)
    # @toys = Toy.where(id: random_num)

  end

  def new

  end

  def edit 
    @toy = Toy.find(params[:id])
  end

  def create
    @toy = Toy.create(
      product: params[:product],
      cost: params[:cost],
      features: params[:features],
      quantity_in_stock: params[:quantity_in_stock],
      image: params[:imagyy77e]

      )

    flash[:success] = "Toy Created"
    redirect_to "/toys/#{@toy.id}"

  end

  def show
    @toy = Toy.find(params[:id])
  end

  def update
    @toy = Toy.find(params[:id])
    
    @toy.update(
      product: params[:product],
      cost: params[:cost],
      features: params[:features],
      quantity_in_stock: params[:quantity_in_stock]
      )

      flash[:success] = "Toy Updated"
      flash[:danger] = "I ate a Skttle"
      redirect_to "/toys/#{@toy.id}"
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy

    flash[:success] = "Toy has been deleted from store"
    redirect_to "/"
  end 

  private
  
  def authenticate_admin!
    unless user_signed_in? && current_user.admin
      redirect_to '/'
    end
  end
  
end
