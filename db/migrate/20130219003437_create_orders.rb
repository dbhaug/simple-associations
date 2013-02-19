class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.integer :item_id
      t.decimal :total

      t.timestamps
    end
  end
end
