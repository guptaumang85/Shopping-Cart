class FinalInvoice < ApplicationRecord
	has_many :invoice_detail
	belongs_to :shipping_address
end
