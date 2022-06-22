class ChangeNameIdForOrders < ActiveRecord::Migration[6.1]
  def change
    change_column_null :orders, :name_id, true
  end
end
