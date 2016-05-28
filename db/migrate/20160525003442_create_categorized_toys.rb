class CreateCategorizedToys < ActiveRecord::Migration
  def change
    create_table :categorized_toys do |t|

      t.timestamps null: false
    end
  end
end
