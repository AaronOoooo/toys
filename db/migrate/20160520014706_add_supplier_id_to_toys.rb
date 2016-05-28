class AddSupplierIdToToys < ActiveRecord::Migration
  def change
    add_column :toys, :supplier_id, :integer
  end
end
