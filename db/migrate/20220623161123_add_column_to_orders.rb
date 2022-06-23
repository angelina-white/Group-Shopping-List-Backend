class AddColumnToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :order_price, :float
  end
end
