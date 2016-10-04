class DropPhonesTable < ActiveRecord::Migration[5.0]
  def up
    drop_table :phones
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
