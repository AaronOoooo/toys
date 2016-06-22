class Image < ActiveRecord::Base
  
  validates :url, presence: true
  validates :product_id, presence: true

  belongs_to :toys
end
