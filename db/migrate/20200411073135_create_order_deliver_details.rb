class CreateOrderDeliverDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_deliver_details do |t|

      t.integer :order_id
      t.string :postal_code
      t.string :street_name
      t.string  :block_name
      t.string :floor_number
      t.string  :house_number

      t.timestamps
    end
  end
end
