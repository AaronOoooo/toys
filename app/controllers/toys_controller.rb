class ToysController < ApplicationController

  def index # REST
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

  def create
    @toy = Toy.create(
      product: params[:product],
      cost: params[:cost],
      features: params[:features],
      quantity_in_stock: params[:quantity_in_stock],
      image: params[:image]

      )
    flash[:success] = "Toy Created"
    redirect_to "/toys/#{@toy.id}"
  end

  def show
    @toy = Toy.find(params[:id])
  end

  def one
    @toy = Toy.first
  end

  def all
    @toys = Toy.all
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy

    flash[:success] = "I ate a Skttle"

    flash[:success] = "Toy has been deleted from store"
    redirect_to "/"
  end 
  
end
