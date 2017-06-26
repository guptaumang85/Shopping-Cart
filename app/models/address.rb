class Address < ApplicationRecord
	belongs_to :registration

	validates :state, presence: true
	validates :city, presence: true
	validates :pin_code, presence: true, length: { is: 6 }, numericality: true
end
