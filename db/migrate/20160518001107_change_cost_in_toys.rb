class ChangeCostInToys < ActiveRecord::Migration
  def change
    change_column :toys, :cost, :decimal, precision: 6, scale: 2
  end
end
