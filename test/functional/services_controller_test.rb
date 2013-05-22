require 'test_helper'

class ServicesControllerTest < ActionController::TestCase
  test "should get medical" do
    get :medical
    assert_response :success
  end

  test "should get surgical" do
    get :surgical
    assert_response :success
  end

  test "should get cosmetic" do
    get :cosmetic
    assert_response :success
  end

  test "should get laser" do
    get :laser
    assert_response :success
  end

  test "should get insurance" do
    get :insurance
    assert_response :success
  end

end
