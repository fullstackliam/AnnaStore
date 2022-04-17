class ProductsController < ApplicationController
  def new
  end

  def view
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all
    @categories = Category.all
  end

  def search
    @products = Product.where(name: params[:search_term])
  end
end
