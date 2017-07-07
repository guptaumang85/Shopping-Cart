class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
<<<<<<< Updated upstream
    	t.references :order_info
=======
      t.references :order_info
>>>>>>> Stashed changes

      t.timestamps
    end
  end
end
