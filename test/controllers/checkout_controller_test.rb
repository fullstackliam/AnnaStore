require "test_helper"

class CheckoutControllerTest < ActionDispatch::IntegrationTest
  test "should get cart" do
    get checkout_cart_url
    assert_response :success
  end

  test "should get payment" do
    get checkout_payment_url
    assert_response :success
  end
end
