class ApplicationController < ActionController::Base
  before_action :init_session
  helper_method :cart

  private

  def init_session
    @categories = Category.all
    session[:shopping_cart] ||= []
    session[:quantity] ||= []
  end

  def cart
    Product.find(session[:shopping_cart])
  end

end
