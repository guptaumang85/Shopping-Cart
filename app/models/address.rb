class Address < ApplicationRecord
	belongs_to :user

	validates :state, presence: true
	validates :city, presence: true
	validates :pin_code, presence: true, length: { is: 6 }, numericality: true
	
end
