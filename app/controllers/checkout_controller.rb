class CheckoutController < ApplicationController

  helper_method :cart
  def cart
    Product.find(session[:shopping_cart])
  end
  def payment
    Product.find(session[:shopping_cart])
  end
end
