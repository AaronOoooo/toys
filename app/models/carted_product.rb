class CartedProduct < ActiveRecord::Base
  
  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :quantity, numericality: { greater_than: 0}
  validates :quantity, presence: true
  validates :status, presence: true
  validates :order_id, presence: true

  belongs_to :order
  belongs_to :toy
  belongs_to :user

  def subtotal
    toy.price * quantity
  end

  def price 
    toy.price
  end

  def name
    toy.product
  end
  
end