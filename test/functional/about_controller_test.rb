require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  test "should get mission" do
    get :mission
    assert_response :success
  end

  test "should get associates" do
    get :associates
    assert_response :success
  end

  test "should get providers" do
    get :providers
    assert_response :success
  end

end
