class Product < ApplicationRecord
  has_one_attached :cover
  #has_many_attached :images
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  #validates :cover, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

end
