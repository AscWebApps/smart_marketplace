class Product < ApplicationRecord
  
  has_many :line_items, dependent: :destroy
  before_destroy :ensure_not_referenced_by_any_line_item 
  
  
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  #validates :cover, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  has_one_attached :cover
  #has_many_attached :images
 
  private
  
  def ensure_not_referenced_by_any_linr_item
    unless line_items.empty?
      errors.add(:base, 'Line Items present')
      throw :abort
    end
  end 

end
