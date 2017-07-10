class Order < ApplicationRecord
  belongs_to :user
  has_many :order_lists

  after_save :send_confirm_mail

  def total_price
    self.order_lists.map(&:product_price).sum
  end

  def total_quantity
    self.order_lists.map(&:qty).sum
  end

  def send_confirm_mail
    OrderConfirmWorker.perform_async(self.id)
  end

end
