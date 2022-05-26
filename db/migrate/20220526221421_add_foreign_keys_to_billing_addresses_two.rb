class AddForeignKeysToBillingAddressesTwo < ActiveRecord::Migration[7.0]
  def change
    add_reference :billing_addresses, :user, null: false, foreign_key: true
    add_reference :billing_addresses, :province, null: false, foreign_key: true
  end
end
