class Product < ApplicationRecord
<<<<<<< HEAD
  validates :title, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  has_one_attached :cover
  #has_many_attached :images
=======
  has_one_attached :cover
  #has_many_attached :images
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  #validates :cover, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

>>>>>>> master
end
