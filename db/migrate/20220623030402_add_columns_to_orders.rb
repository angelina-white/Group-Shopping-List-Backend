class AddColumnsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :year, :integer
    add_column :orders, :month, :integer
    add_column :orders, :day, :integer
  end
end
