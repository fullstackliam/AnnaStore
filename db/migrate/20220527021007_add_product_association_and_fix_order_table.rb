class AddProductAssociationAndFixOrderTable < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :subtotal, :string
    add_column :orders, :tax, :float
    add_column :orders, :grand_total, :float
    add_reference :orders, :user, null: false, foreign_key: true

    add_column :order_products, :quantity, :integer
    add_reference :order_products, :order, null: false, foreign_key: true
    add_reference :order_products, :product, null:false, foreign_key: true
    add_reference :order_products, :user, null:false, foreign_key: true
  end
end
