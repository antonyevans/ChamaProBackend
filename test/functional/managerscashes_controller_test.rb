require 'test_helper'

class ManagerscashesControllerTest < ActionController::TestCase
  setup do
    @managerscash = managerscashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:managerscashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create managerscash" do
    assert_difference('Managerscash.count') do
      post :create, :managerscash => @managerscash.attributes
    end

    assert_redirected_to managerscash_path(assigns(:managerscash))
  end

  test "should show managerscash" do
    get :show, :id => @managerscash.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @managerscash.to_param
    assert_response :success
  end

  test "should update managerscash" do
    put :update, :id => @managerscash.to_param, :managerscash => @managerscash.attributes
    assert_redirected_to managerscash_path(assigns(:managerscash))
  end

  test "should destroy managerscash" do
    assert_difference('Managerscash.count', -1) do
      delete :destroy, :id => @managerscash.to_param
    end

    assert_redirected_to managerscashes_path
  end
end
