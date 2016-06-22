class Order < ActiveRecord::Base
  
  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :total, nmericality: { >0 }

  belongs_to :user
  has_many :carted_products
  has_many :toys, through: :carted_products

  def calculate_subtotal(cart_items)
    self.subtotal = 0
    
    cart_items.each do | cart_item |
      self.subtotal += cart_item_toy.price * cart_item.quantity
    end
  end
end
