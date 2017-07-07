class Address < ApplicationRecord
<<<<<<< Updated upstream
	belongs_to :user

	validates :state, presence: true
	validates :city, presence: true
	validates :pin_code, presence: true, length: { is: 6 }, numericality: true
	
=======
  belongs_to :user

  validates :state, presence: true
  validates :city, presence: true
  validates :pin_code, presence: true, length: { is: 6 }, numericality: true

>>>>>>> Stashed changes
end
