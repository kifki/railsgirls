require 'test_helper'

class SeznamsControllerTest < ActionController::TestCase
  setup do
    @seznam = seznams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seznams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seznam" do
    assert_difference('Seznam.count') do
      post :create, seznam: @seznam.attributes
    end

    assert_redirected_to seznam_path(assigns(:seznam))
  end

  test "should show seznam" do
    get :show, id: @seznam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seznam
    assert_response :success
  end

  test "should update seznam" do
    put :update, id: @seznam, seznam: @seznam.attributes
    assert_redirected_to seznam_path(assigns(:seznam))
  end

  test "should destroy seznam" do
    assert_difference('Seznam.count', -1) do
      delete :destroy, id: @seznam
    end

    assert_redirected_to seznams_path
  end
end
