class BillingAddress < ApplicationRecord
  belongs_to :user
  belongs_to :province


  validates :street_address, :city, :first_name, :last_name, :country, :postal_code, present: true


end
