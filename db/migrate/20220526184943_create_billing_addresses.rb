class CreateBillingAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :billing_addresses do |t|
      t.string :street_address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
