class CreateToys < ActiveRecord::Migration
  def change
    create_table :toys do |t|
      t.string :product
      t.string :color
      t.integer :cost
      t.string :features
      t.integer :quantity_in_stock
      t.string :image

      t.timestamps null: false
    end
  end
end
