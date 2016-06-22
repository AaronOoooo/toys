class Toy < ActiveRecord::Base

  validates :product, presence: true
  validates :product, uniqueness: true
  validates :features, presence: true
  validates :features, length: {maximum: 200}
  validates :cost, format: {with: /\A\d+(?:\.\d{0,2})?\z/, message: "must be a price."}
  
  belongs_to :supplier
  has_many :categorized_toys
  has_many :categories, through: :categorized_toys
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products 
  has_many :users, through: :carted_products

  TAX = 0.09

  def sale_message
    if cost < 20
      "Discount Item!"
    else
      "On Sale!"
    end
  end

  def tax
    cost * TAX 
  end

  def total
    TAX * cost + cost
  end

  def in_stock
    "Stock"
  end


end

