class Order < ActiveRecord::Base
    belongs_to :name
    belongs_to :sku
end