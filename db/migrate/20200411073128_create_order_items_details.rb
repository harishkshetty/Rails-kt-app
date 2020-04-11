class CreateOrderItemsDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items_details do |t|

      t.integer :order_id
      t.string :item_code
      t.string :item_name
      t.float :price
      t.integer :qty
      t.float :discount
      t.float :total_discount
      t.float :total_price

      t.timestamps
    end
  end
end
