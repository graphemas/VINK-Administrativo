
class HomeController < ApplicationController
  
  def index
    @data = gt_data("https://challenge.ektdevelopers.com/api/catalog_system/pvt/category/tree/320/")
  end
end
