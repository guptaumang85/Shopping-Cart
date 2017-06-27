class CreateProducts < ActiveRecord::Migration[5.1]

  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :product_price
      t.text :product_description
      t.string :product_images

      t.timestamps
    end
  end
  
end
