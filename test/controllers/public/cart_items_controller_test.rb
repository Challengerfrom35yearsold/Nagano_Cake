require "test_helper"

class Public::CartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_cart_items_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_cart_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_cart_items_update_url
    assert_response :success
  end

  test "should get unsubscribe" do
    get public_cart_items_unsubscribe_url
    assert_response :success
  end

  test "should get withdraw" do
    get public_cart_items_withdraw_url
    assert_response :success
  end
end
