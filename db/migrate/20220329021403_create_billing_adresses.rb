class CreateBillingAdresses < ActiveRecord::Migration[7.0]
  def change
    create_table :billing_adresses do |t|
      t.text :street_adress
      t.string :city
      t.string :provice
      t.string :country
      t.string :postal_code

      t.timestamps
    end
  end
end
