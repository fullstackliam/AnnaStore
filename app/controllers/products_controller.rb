class ProductsController < ApplicationController
  def new
  end

  def view
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.order(:name)
    @categories = Category.order(:name)
  end
end
