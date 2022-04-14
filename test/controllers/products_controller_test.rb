require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get products_new_url
    assert_response :success
  end

  test "should get view" do
    get products_view_url
    assert_response :success
  end

  test "should get index" do
    get products_index_url
    assert_response :success
  end
end
