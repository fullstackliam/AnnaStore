class Product < ApplicationRecord
  belongs_to :category
  has_many :order_products
  has_one_attached :image
  validates :name, presence: true

end
