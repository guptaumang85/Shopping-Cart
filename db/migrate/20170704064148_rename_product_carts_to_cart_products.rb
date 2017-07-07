class RenameProductCartsToCartProducts < ActiveRecord::Migration[5.1]
  def change
  	rename_table :product_carts, :cart_products
  end
end
