class AddSizeToProductLists < ActiveRecord::Migration[5.0]
  def change
    add_column :product_lists, :size, :integer
  end
end
