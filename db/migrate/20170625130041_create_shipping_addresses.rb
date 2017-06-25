class CreateShippingAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :shipping_addresses do |t|
    	t.references :registration
    	t.string :to_city
    	t.string :to_street
    	t.integer :to_pincode

      t.timestamps
    end
  end
end
