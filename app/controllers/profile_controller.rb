class ProfileController < ApplicationController
  def edit
    @user = current_user

    @addresses = @user.billing_addresses

    @provinces = Province.all




    ##@orders = Order.where("user_id = ?", @user)

    ##@order_details = OrderDetail.where("user_id = ?", @user)
  end
end
