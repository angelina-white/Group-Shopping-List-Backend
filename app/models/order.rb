class Order < ActiveRecord::Base
    belongs_to :name
    belongs_to :sku

    def self.sortNames
        self.order(:name_id)
    end
end