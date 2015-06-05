class ProductsController < ApplicationController
  def index
  	@products = Product.available
  end

  def show
  end
end
