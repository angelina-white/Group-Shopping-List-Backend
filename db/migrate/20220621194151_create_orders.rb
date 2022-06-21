class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.date :shop_date
      t.integer :sku_id
      t.float :quantity
      t.integer :name_id
    end
  end
end
