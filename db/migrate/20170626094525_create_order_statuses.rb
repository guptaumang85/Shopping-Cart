class CreateOrderStatuses < ActiveRecord::Migration[5.1]

  def change
    create_table :order_statuses do |t|
      t.string :order_status

      t.timestamps
    end
  end
<<<<<<< Updated upstream
  
=======

>>>>>>> Stashed changes
end
