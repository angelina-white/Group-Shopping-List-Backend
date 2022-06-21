class CreateSkus < ActiveRecord::Migration[6.1]
  def change
    create_table :skus do |t|
      t.integer :sku_number
      t.string :label
      t.string :description
      t.integer :unit_count
      t.float :price
    end
  end
end
