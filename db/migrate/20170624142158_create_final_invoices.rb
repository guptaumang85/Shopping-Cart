class CreateFinalInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :final_invoices do |t|
    	t.integer :total_amount
    	t.integer :total_discount
    	t.integer :total_shipping
    	t.references :invoice_detail

      t.timestamps
    end
  end
end
