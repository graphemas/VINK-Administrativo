class ProductsController < ApplicationController
    def index
        @products = gt_data("https://challenge.ektdevelopers.com/api/catalog_system/pvt/products/GetProductAndSkuIds?categoryId=#{params['category_id']}&_from=1&_to=10")
        @products_list = []
        @products['data'].each do |product_id|
            product = gt_data("https://challenge.ektdevelopers.com/api/catalog_system/pvt/products/ProductGet/#{product_id[0]}")
            if !product.empty? && !product.nil?
                @products_list.push(product)
            end
        end
    end
  
  def show
    id= params[:id]
    @product = gt_data("https://challenge.ektdevelopers.com/api/catalog_system/pvt/products/#{id}/specification")
  end
end
