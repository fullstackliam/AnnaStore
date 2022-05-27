class ProfileController < ApplicationController
  helper_method :getUserBillingAddress

  def edit
    @user = current_user

    @provinces = Province.all

    @billing_addresses = BillingAddress.where("user_id = ?", @user)


    ##@orders = Order.where("user_id = ?", @user)

    ##@order_details = OrderDetail.where("user_id = ?", @user)
  end

  def getUserBillingAddress
    @billing_address = BillingAddress.where("user_id = ?", @user).first
  end

  def new
    oldBillingAddress = BillingAddress.find(params[:address_id])
    oldBillingAddress.destroy

    billingAddress = BillingAddress.new
    billingAddress.first_name = params[:first_name]
    billingAddress.last_name = params[:last_name]
    billingAddress.street_address = params[:street_address]
    billingAddress.city = params[:city]
    billingAddress.country = "Canada"
    billingAddress.province_id = params[:province_id]
    billingAddress.postal_code = params[:postal_code]
    billingAddress.user_id = params[:user_id]
    puts billingAddress.inspect
    billingAddress.save

    redirect_back(fallback_location: root_path)
  end

end
