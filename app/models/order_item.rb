class OrderItem < ApplicationRecord
	belongs_to :product
	belongs_to :order_info

	validates :qty, presence: true, numericality: { only_integer: true, greater_than: 0 }
	validates :price, presence: true
	validates :total_price, presence: true
end
