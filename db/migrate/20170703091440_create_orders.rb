class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
    	t.references :order_info

      t.timestamps
    end
  end
end
