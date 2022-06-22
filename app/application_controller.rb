# require 'pry'

class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/" do
      { message: "Good luck with your project!" }.to_json
    end

    get "/orders" do
      orders = Order.all
      orders.to_json
    end

    get "/skus" do
      skus = Sku.all
      skus.to_json
    end

    get "/names" do
      names = Name.all
      names.to_json
    end

    post '/orders' do

      added_order = Order.create(
        shop_date: Date.new(params[:shop_year], params[:shop_month], params[:shop_day]), 
        sku_id: params[:sku_id], 
        quantity: params[:quantity], 
        name_id: params[:name_id])
      added_order.to_json
    end

    post '/skus' do
      added_sku = Sku.create(sku_number: params[:sku_number], label: params[:label], description: params[:description], unit_count: params[:unit_count], price: params[:price])
      added_sku.to_json
    end

    post '/names' do
      added_name = Name.create(name: params[:name])
      added_name.to_json
    end
  
  end