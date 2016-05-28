class AddToyIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :toy_id, :integer
  end
end
