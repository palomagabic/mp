require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get one" do
    get items_one_url
    assert_response :success
  end

  test "should get two" do
    get items_two_url
    assert_response :success
  end

  test "should get three" do
    get items_three_url
    assert_response :success
  end

  test "should get four" do
    get items_four_url
    assert_response :success
  end

  test "should get five" do
    get items_five_url
    assert_response :success
  end

  test "should get six" do
    get items_six_url
    assert_response :success
  end

  test "should get seven" do
    get items_seven_url
    assert_response :success
  end

end
