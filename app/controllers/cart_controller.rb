class CartController < ApplicationController

  helper_method :cart
  helper_method :sub_total

  def add
    product_id = params[:id].to_i

    quantity = params[:quantity].to_i
    puts product_id
    unless session[:shopping_cart].include?(product_id)
      session[:shopping_cart] << product_id

      session[:quantity][session[:shopping_cart].index(product_id)] = quantity

      product = Product.find(product_id)


      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    product_id = params[:id].to_i
    session[:quantity].delete_at(session[:shopping_cart].index(product_id))
    session[:shopping_cart].delete(product_id)
    redirect_back(fallback_location: root_path)
  end

  def update


    product_id = params[:id].to_i
    quantity = params[:quantity].to_i
    session[:quantity][session[:shopping_cart].index(product_id)]

    session[:quantity][session[:shopping_cart].index(product_id)] = quantity

    redirect_back(fallback_location: root_path)

  end
end
