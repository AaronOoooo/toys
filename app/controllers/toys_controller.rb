class ToysController < ApplicationController

  def index # REST
    @toys = Toy.all
  end

  def new
    #implicit render
  end

  def create
    @toy = Toy.create(
      product: params[:product]
      )
    render 'show.html.erb'
  end

  def show
    @toys=Toy.find(params[:id])
  end

  def one
    @toy = Toy.first
  end

  def all
    @toys = Toy.all
  end
  
end
