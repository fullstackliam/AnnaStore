class ProfileController < ApplicationController
  helper_method :getUserBillingAddress
  def edit
    @user = current_user

    @provinces = Province.all




    ##@orders = Order.where("user_id = ?", @user)

    ##@order_details = OrderDetail.where("user_id = ?", @user)
  end


end
