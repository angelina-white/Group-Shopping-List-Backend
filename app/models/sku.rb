class Sku < ActiveRecord::Base
    has_many :orders
end