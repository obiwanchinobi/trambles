require 'test_helper'

class TransportsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transport" do
    assert_difference('Transport.count') do
      post :create, :transport => { }
    end

    assert_redirected_to transport_path(assigns(:transport))
  end

  test "should show transport" do
    get :show, :id => transports(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => transports(:one).to_param
    assert_response :success
  end

  test "should update transport" do
    put :update, :id => transports(:one).to_param, :transport => { }
    assert_redirected_to transport_path(assigns(:transport))
  end

  test "should destroy transport" do
    assert_difference('Transport.count', -1) do
      delete :destroy, :id => transports(:one).to_param
    end

    assert_redirected_to transports_path
  end
end
