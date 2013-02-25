class AddColumnToOrdersForItemId < ActiveRecord::Migration
  def change
  	add_column :orders, :item_id, :int
  end
end
