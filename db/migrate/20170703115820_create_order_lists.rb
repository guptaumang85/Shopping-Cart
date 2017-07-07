class CreateOrderLists < ActiveRecord::Migration[5.1]
  def change
    create_table :order_lists do |t|
      t.references :order
      t.timestamps
    end
  end
end
