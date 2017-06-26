class Product < ApplicationRecord
	has_many :order_item

	validates :name, presence: true
	validates :price, presence: true
	validates :description, presence: true
	validates :in_stock, presence: true

end
