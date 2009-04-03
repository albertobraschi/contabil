require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new" do
    assert_difference('New.count') do
      post :create, :new => { }
    end

    assert_redirected_to new_path(assigns(:new))
  end

  test "should show new" do
    get :show, :id => news(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => news(:one).to_param
    assert_response :success
  end

  test "should update new" do
    put :update, :id => news(:one).to_param, :new => { }
    assert_redirected_to new_path(assigns(:new))
  end

  test "should destroy new" do
    assert_difference('New.count', -1) do
      delete :destroy, :id => news(:one).to_param
    end

    assert_redirected_to news_path
  end
end
