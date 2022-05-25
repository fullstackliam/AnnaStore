class AddColumnsToBillingAddresses < ActiveRecord::Migration[7.0]
  def change
    add_column :billing_adresses, :first_name, :string
    add_column :billing_adresses, :last_name, :string
  end
end