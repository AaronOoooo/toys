class CategorizedToy < ActiveRecord::Base
  belongs_to :toy
  belongs_to :category
end
