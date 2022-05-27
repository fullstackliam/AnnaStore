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
    session[:tax_rate] = @taxRate
  end

  def receipt
    newOrder = Order.new
    newOrder.user_id = 2
    newOrder.subtotal = sub_total
    newOrder.tax = (taxRate * sub_total).round(2)
    newOrder.grand_total = (sub_total * ((taxRate) + 1 )).round(2)
    newOrder.billing_addresses_id = mainAddress.id
    puts newOrder.inspect
    newOrder.save

    cart.each do |product|
      order_product = OrderProduct.new
      order_product.order_id = newOrder.id
      order_product.product_id = product.id
      order_product.quantity = session[:quantity][session[:shopping_cart].index(product.id)]
      order_product.user_id = current_user.id
      puts order_product.inspect
      order_product.save
    end

    session[:quantity] = []
    session[:shopping_cart] = []
    session[:tax_rate] = 0

  end
end
