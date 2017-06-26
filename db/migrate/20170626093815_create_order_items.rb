class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
    	t.references :product
    	t.references :order_info
    	t.float :price
    	t.integer :qty
    	t.float :total_price

      t.timestamps
    end
  end
end
