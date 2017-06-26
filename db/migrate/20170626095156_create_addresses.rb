class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
    	t.string :state
    	t.string :city
    	t.string :street
    	t.integer :pincode
    	t.references :registration

      t.timestamps
    end
  end
end
