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
        # shop_date: Date.new(params[:shop_year], params[:shop_month], params[:shop_day]), 
        # shop_date: params[:shop_date],
        sku_id: params[:sku_id], 
        quantity: params[:quantity], 
        name_id: params[:name_id] || Name.first,
        year: params[:year],
        month: params[:month],
        day: params[:day], 
        order_price: params[:order_price] || 1.5
      )
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

    delete '/names/:id' do 
      deleted_name = Name.find(params[:id])
      deleted_name.destroy
      deleted_name.to_json
    end

    delete '/skus/:id' do
      deleted_sku = Sku.find(params[:id])
      deleted_sku.destroy
      deleted_sku.to_json
    end

    patch '/orders/:id' do
      patched_order = Order.find(params[:id])
      patched_order.update(
        quantity: params[:quantity],
      )
      patched_order.to_json
    end

    patch '/skus/:id' do
      patched_sku = Sku.find(params[:id])
      patched_sku.update(
        sku_number: params[:sku_number],
        label: params[:label],
        description: params[:description],
        unit_count: params[:unit_count],
        price: params[:price]
      )
      patched_sku.to_json
    end
  
  end