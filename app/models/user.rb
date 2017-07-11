class User < ApplicationRecord
  has_secure_password

  after_save :send_confirm_mail

  has_many :addresses
  has_one  :cart
  has_many :orders
  has_one :picture, as: :imageable

  validates :email, presence: true, uniqueness: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :contact_number, presence: true, uniqueness: true, length: { is: 10 }
  validate  :validate_date_of_birth

  accepts_nested_attributes_for :picture
  private

  def validate_date_of_birth
    errors.add(:date_of_birth, 'must be a valid date') if date_of_birth.present? && date_of_birth > Time.zone.today
  end

  def send_confirm_mail
    UserNotifyWorker.perform_async(self.id)
  end

end
