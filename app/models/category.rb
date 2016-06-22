class Category < ActiveRecord::Base
  
  validates :name, uniqueness: true

  has_many :categorized_toys
  has_many :toys, through: :categorized_toys
end