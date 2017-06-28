class User < ApplicationRecord
	has_secure_password
	has_many :address

	validates :email, presence: true,uniqueness: true
	validates :password, presence: true, length: {in: 6..20}
	validates :last_name, presence: true
	validates :first_name, presence: true
	validates :date_of_birth, presence: true
	validates :contact_number, presence: true,uniqueness: true,length: { is: 10  }

end
