class AddUserToBillingAdress < ActiveRecord::Migration[7.0]
  def change
    add_reference :billing_adresses, :user, null: false, foreign_key: true
  end
end
