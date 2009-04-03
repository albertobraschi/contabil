require 'test_helper'

class NewnessesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newnesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newness" do
    assert_difference('Newness.count') do
      post :create, :newness => { }
    end

    assert_redirected_to newness_path(assigns(:newness))
  end

  test "should show newness" do
    get :show, :id => newnesses(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => newnesses(:one).to_param
    assert_response :success
  end

  test "should update newness" do
    put :update, :id => newnesses(:one).to_param, :newness => { }
    assert_redirected_to newness_path(assigns(:newness))
  end

  test "should destroy newness" do
    assert_difference('Newness.count', -1) do
      delete :destroy, :id => newnesses(:one).to_param
    end

    assert_redirected_to newnesses_path
  end
end
