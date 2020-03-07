class ProductsController < ActionController::Base
 
  
  def search
       if params[:search]
        @products = Product.search(params[:search])
      else
        @products = Product.all
      end
    render json: @products, :status => 200
    
  end
  
  
end




class Product < ActiveRecord::Base
  
  def self.search(search)
    where("name LIKE :search OR category LIKE :search", {search: "%#{search}%"})
  end
end