class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku, :null => false
      t.string :description, :null => false
      t.float :price, :null => false
      t.integer :quantity, :null => false, :default => 0
      t.integer :item_id, :null => false
      t.string :item_type, :null => false
      t.boolean :active, :null => false, :default => false
      t.boolean :unlimited_inventory, :null => false, :default => false
    end
  end
end
