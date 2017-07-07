class AddColumnToOrderList < ActiveRecord::Migration[5.1]
  def change
  	add_reference :order_lists, :product
  	add_column :order_lists, :qty, :integer
  	add_column :order_lists, :price, :float
  end
end
