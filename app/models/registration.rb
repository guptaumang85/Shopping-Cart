class Registration < ApplicationRecord
	has_many :address

	validates :email,uniqueness: true,presence: true
	validates :password, length: { in: 6..20 }
	validates :last_name, presence: true
	validates :first_name, presence: true
	validates :contact_number,uniqueness: true, presence: true, numericality: true
	validates :mydate_is_date?,presence: true
	private

  def mydate_is_date?
    if !date_of_birth.is_a?(Date)
      errors.add(:date_of_birth, 'must be a valid date') 
    end
  end
	#before_validation :nitesh

#	def nitesh
#		binding.pry
#	end

end