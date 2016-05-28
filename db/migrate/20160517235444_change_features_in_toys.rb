class ChangeFeaturesInToys < ActiveRecord::Migration
  def change
    change_column :toys, :features, :text
  end
end