class User < ApplicationRecord
	has_secure_password
	has_many :address

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: {in: 6..20}
	validates :last_name, presence: true
	validates :first_name, presence: true
	validates :contact_number, presence: true, uniqueness: true, length: { is: 10 }
	validate  :mydate_is_date?

	private

  def mydate_is_date?
		errors.add(:date_of_birth, 'must be a valid date') if date_of_birth > Time.zone.today
  end

end
