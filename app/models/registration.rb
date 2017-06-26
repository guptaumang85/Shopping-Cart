class Registration < ApplicationRecord
	has_many :address

	validates :email,uniqueness: true,presence: true
	validates :password, length: { in: 6..20 }
	validates :last_name, presence: true
	validates :first_name, presence: true
	validates_format_of :date_of_birth, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy"
	validates :contact_number,uniqueness: true, presence: true, numericality: true

end