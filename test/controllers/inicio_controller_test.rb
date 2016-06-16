require 'test_helper'

class InicioControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

end
