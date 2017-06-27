class CreateOrderInfos < ActiveRecord::Migration[5.1]

  def change
    create_table :order_infos do |t|
      t.float :subtotal
      t.float :tax
      t.float :shipping_charge
      t.float :total
      t.references :order_status

      t.timestamps
    end
  end
  
end
