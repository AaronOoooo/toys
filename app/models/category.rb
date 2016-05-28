class Category < ActiveRecord::Base
  has_many :categorized_toys
  has_many :toys, through: :categorized_toys
end