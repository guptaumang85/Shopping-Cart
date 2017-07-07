class Order < ApplicationRecord
  belongs_to :user
  has_many :order_lists
  has_one :order_status

  def total_price
    self.order_lists.map(&:product_price).sum
  end

  def total_quantity
    self.order_lists.map(&:qty).sum
  end

end
