require 'test_helper'

class CastingsControllerTest < ActionController::TestCase
  setup do
    @casting = castings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casting" do
    assert_difference('Casting.count') do
      post :create, :casting => @casting.attributes
    end

    assert_redirected_to casting_path(assigns(:casting))
  end

  test "should show casting" do
    get :show, :id => @casting.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @casting.to_param
    assert_response :success
  end

  test "should update casting" do
    put :update, :id => @casting.to_param, :casting => @casting.attributes
    assert_redirected_to casting_path(assigns(:casting))
  end

  test "should destroy casting" do
    assert_difference('Casting.count', -1) do
      delete :destroy, :id => @casting.to_param
    end

    assert_redirected_to castings_path
  end
end
