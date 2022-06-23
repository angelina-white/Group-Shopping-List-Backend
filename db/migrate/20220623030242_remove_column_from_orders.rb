class RemoveColumnFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :shop_date
  end
end
