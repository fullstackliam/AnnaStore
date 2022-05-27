class ApplicationController < ActionController::Base
  before_action :init_session
  helper_method :cart
  helper_method :current_user_addresses
  helper_method :provinces
  helper_method :sub_total
  private

  def provinces
    @provinces = Province.all
  end

  def init_session
    @categories = Category.all
    @provinces = Province.all
    session[:shopping_cart] ||= []
    session[:quantity] ||= []
    session[:cart_subtotal] ||= 0
    session[:tax_rate] ||= 0
  end

  def current_user_addresses
    @billing_addresses = BillingAddress.where("user_id =?" , current_user.id)
  end

  def cart
    Product.find(session[:shopping_cart])
  end
  def sub_total
    price = 0
    cart.each do |product|
      productAtPosition = session[:quantity][session[:shopping_cart].index(product.id)]

      price += product.price * productAtPosition
    end
    session[:cart_subtotal] = price
  end

end
