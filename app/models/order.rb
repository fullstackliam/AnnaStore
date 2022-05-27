class Order < ApplicationRecord
  belongs_to :user
  belongs_to :billing_address
  has_many :order_products
end
