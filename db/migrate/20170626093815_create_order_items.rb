class CreateOrderItems < ActiveRecord::Migration[5.1]

  def change
    create_table :order_items do |t|
<<<<<<< Updated upstream
    	t.references :product
    	t.references :order_info
    	t.float :price
    	t.integer :qty
    	t.float :total_price
=======
      t.references :product
      t.references :order_info
      t.float :price
      t.integer :qty
      t.float :total_price
>>>>>>> Stashed changes

      t.timestamps
    end
  end
<<<<<<< Updated upstream
  
=======

>>>>>>> Stashed changes
end
