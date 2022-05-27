class OrderToBillingAddressRelation < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :billing_addresses, null: false, foreign_key: true
  end
end
