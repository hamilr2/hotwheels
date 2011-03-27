require 'test_helper'

class WheelStylesControllerTest < ActionController::TestCase
  setup do
    @wheel_style = wheel_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wheel_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wheel_style" do
    assert_difference('WheelStyle.count') do
      post :create, :wheel_style => @wheel_style.attributes
    end

    assert_redirected_to wheel_style_path(assigns(:wheel_style))
  end

  test "should show wheel_style" do
    get :show, :id => @wheel_style.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @wheel_style.to_param
    assert_response :success
  end

  test "should update wheel_style" do
    put :update, :id => @wheel_style.to_param, :wheel_style => @wheel_style.attributes
    assert_redirected_to wheel_style_path(assigns(:wheel_style))
  end

  test "should destroy wheel_style" do
    assert_difference('WheelStyle.count', -1) do
      delete :destroy, :id => @wheel_style.to_param
    end

    assert_redirected_to wheel_styles_path
  end
end
