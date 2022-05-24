class Province < ApplicationRecord
  has_may :billing_adresses

  validates :name, presence: true
end
