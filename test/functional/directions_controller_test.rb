require 'test_helper'

class DirectionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:directions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create direction" do
    assert_difference('Direction.count') do
      post :create, :direction => { }
    end

    assert_redirected_to direction_path(assigns(:direction))
  end

  test "should show direction" do
    get :show, :id => directions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => directions(:one).to_param
    assert_response :success
  end

  test "should update direction" do
    put :update, :id => directions(:one).to_param, :direction => { }
    assert_redirected_to direction_path(assigns(:direction))
  end

  test "should destroy direction" do
    assert_difference('Direction.count', -1) do
      delete :destroy, :id => directions(:one).to_param
    end

    assert_redirected_to directions_path
  end
end
