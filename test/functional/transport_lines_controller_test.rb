require 'test_helper'

class TransportLinesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transport_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transport_line" do
    assert_difference('TransportLine.count') do
      post :create, :transport_line => { }
    end

    assert_redirected_to transport_line_path(assigns(:transport_line))
  end

  test "should show transport_line" do
    get :show, :id => transport_lines(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => transport_lines(:one).to_param
    assert_response :success
  end

  test "should update transport_line" do
    put :update, :id => transport_lines(:one).to_param, :transport_line => { }
    assert_redirected_to transport_line_path(assigns(:transport_line))
  end

  test "should destroy transport_line" do
    assert_difference('TransportLine.count', -1) do
      delete :destroy, :id => transport_lines(:one).to_param
    end

    assert_redirected_to transport_lines_path
  end
end
