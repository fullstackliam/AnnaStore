class ChangeStreetAdressName < ActiveRecord::Migration[7.0]
  def change
    rename_column :billing_addresses, :street_adress, :street_address
  end
end
