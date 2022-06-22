ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all "app"

def reload
    load "app/models/name.rb"
    load "app/models/order.rb"
    load "app/models/sku.rb"
end