require 'bundler/setup'
Bundler.require(:default, :development)

require_all "app/models"

def reload
    load "app/models/name.rb"
    load "app/models/order.rb"
    load "app/models/sku.rb"
end