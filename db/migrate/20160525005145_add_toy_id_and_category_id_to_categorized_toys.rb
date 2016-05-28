class AddToyIdAndCategoryIdToCategorizedToys < ActiveRecord::Migration
  def change
    add_column :categorized_toys, :toy_id, :integer
    add_column :categorized_toys, :category_id, :integer
  end
end
