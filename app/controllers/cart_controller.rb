class CartController < ApplicationController
  def add
    product_id = params[:id].to_i
    puts product_id
    unless session[:shopping_cart].include?(product_id)
      session[:shopping_cart] << product_id
      product = Product.find(product_id)
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    product_id = params[:id].to_i
    session[:shopping_cart].delete(product_id)
    redirect_back(fallback_location: root_path)
  end
  # For allowing stripe integration | put into create method
  #redirect_to @session.url, allow_other_host: true

    #respond_to do | format |

      #format.js
      #app/views/checkout/create.js.erb
    #end
end
