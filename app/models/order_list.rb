class OrderList < ApplicationRecord
  belongs_to :order
  belongs_to :product

  def product_price
    qty * price
  end

end
