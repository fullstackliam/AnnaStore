class CheckoutController < ApplicationController

  helper_method :cart
  helper_method :sub_total
  helper_method :mainAddress
  helper_method :taxRate


  def cart
    Product.find(session[:shopping_cart])
  end

  def mainAddress
    @address = BillingAddress.where("user_id =? ", current_user.id).first;
  end

  def taxRate
    @taxRate = 0

    case mainAddress.province.name
    when "Alberta"
      @taxRate = 0.05
    when "Ontario"
      @taxRate = 0.13
    when "Manitoba"
      @taxRate = 0.12
    when "Quebec"
      @taxRate = 0.14979
    when "British Colombia"
      @taxRate = 0.12
    when "Saskatchewan"
      @taxRate = 0.11
    when "New Brunswick"
      @taxRate = 0.15
    when "Newfoundland and Labrador"
      @taxRate = 0.15
    when "Nova Scotia"
      @taxRate = 0.15
    when "Prince Edward Island"
      @taxRate = 0.15
    when "Northwest Territories"
      @taxRate = 0.05
    when "Nunavut"
      @taxRate = 0.05
    when "Yukon"
      @taxRate = 0.05
    end
  end

  def payment

    order = Order.new





  end
end
