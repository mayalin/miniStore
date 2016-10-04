class AddSizeToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :size, :integer
  end
end
