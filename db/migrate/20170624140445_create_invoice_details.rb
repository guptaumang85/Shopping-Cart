class CreateInvoiceDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :invoice_details do |t|
    	t.integer :quantity
    	t.integer :discount
    	t.reference :product

      t.timestamps
    end
  end
end
