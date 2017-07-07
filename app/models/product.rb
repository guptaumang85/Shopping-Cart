class Product < ApplicationRecord
<<<<<<< Updated upstream
	has_many :order_item

	validates :name, presence: true
	validates :price, presence: true
	validates :description, presence: true
	mount_uploader :image, ImageUploader
=======
  has_many :order_item

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  mount_uploader :image, ImageUploader
>>>>>>> Stashed changes

end
