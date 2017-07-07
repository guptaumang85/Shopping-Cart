class User < ApplicationRecord
<<<<<<< Updated upstream
	has_secure_password
	has_many :address
	has_many :order

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: {in: 6..20}
	validates :last_name, presence: true
	validates :first_name, presence: true
	validates :contact_number, presence: true, uniqueness: true, length: { is: 10 }
	validate  :validate_date_of_birth

	private

  def validate_date_of_birth
		errors.add(:date_of_birth, 'must be a valid date') if date_of_birth > Time.zone.today
=======
  has_secure_password
  has_many :address
  has_many :order

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {in: 6..20}
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :contact_number, presence: true, uniqueness: true, length: { is: 10 }
  validate  :validate_date_of_birth

  private

  def validate_date_of_birth
    errors.add(:date_of_birth, 'must be a valid date') if date_of_birth > Time.zone.today
>>>>>>> Stashed changes
  end

end
