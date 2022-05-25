class Province < ApplicationRecord
  has_many :billing_adresses

  validates :name, presence: true
end
