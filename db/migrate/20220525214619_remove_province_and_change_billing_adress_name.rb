class RemoveProvinceAndChangeBillingAdressName < ActiveRecord::Migration[7.0]
  def change
    rename_table :billing_adresses, :billing_addresses
    remove_column :billing_addresses, :provice
    add_reference :billing_addresses, :province, null: false, foreign_key: true
  end
end
