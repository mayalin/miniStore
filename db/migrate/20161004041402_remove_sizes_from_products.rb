class RemoveSizesFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :sizes, :integer
  end
end
