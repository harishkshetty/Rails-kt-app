class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id

      t.string :order_ref
      t.float :total_amount
      t.float  :total_discount

      t.timestamps
    end
  end
end


