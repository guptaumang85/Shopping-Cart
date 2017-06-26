class Registration < ApplicationRecord
	has_many :address

	validates :Pin_code, presence: true


end