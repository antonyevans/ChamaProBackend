require 'test_helper'

class TableIndicesControllerTest < ActionController::TestCase
  setup do
    @table_index = table_indices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table_indices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table_index" do
    assert_difference('TableIndex.count') do
      post :create, :table_index => @table_index.attributes
    end

    assert_redirected_to table_index_path(assigns(:table_index))
  end

  test "should show table_index" do
    get :show, :id => @table_index.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @table_index.to_param
    assert_response :success
  end

  test "should update table_index" do
    put :update, :id => @table_index.to_param, :table_index => @table_index.attributes
    assert_redirected_to table_index_path(assigns(:table_index))
  end

  test "should destroy table_index" do
    assert_difference('TableIndex.count', -1) do
      delete :destroy, :id => @table_index.to_param
    end

    assert_redirected_to table_indices_path
  end
end
