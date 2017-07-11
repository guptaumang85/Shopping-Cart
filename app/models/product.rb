class Product < ApplicationRecord
	has_one :picture, as: :imageable

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
  accepts_nested_attributes_for :picture
  #mount_uploader :image, ImageUploader

end
