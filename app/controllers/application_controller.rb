class ApplicationController < ActionController::Base
  before_action :init_session
  helper_method :cart
  helper_method :current_user_addresses
  helper_method :provinces
  private

  def provinces
    @provinces = Province.all
  end

  def init_session
    @categories = Category.all
    @provinces = Province.all
    session[:shopping_cart] ||= []
    session[:quantity] ||= []
  end

  def current_user_addresses
    @addresses = current_user.billing_addresses
  end

  def cart
    Product.find(session[:shopping_cart])
  end
end
