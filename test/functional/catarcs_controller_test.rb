require 'test_helper'

class CatarcsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catarcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catarc" do
    assert_difference('Catarc.count') do
      post :create, :catarc => { }
    end

    assert_redirected_to catarc_path(assigns(:catarc))
  end

  test "should show catarc" do
    get :show, :id => catarcs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => catarcs(:one).to_param
    assert_response :success
  end

  test "should update catarc" do
    put :update, :id => catarcs(:one).to_param, :catarc => { }
    assert_redirected_to catarc_path(assigns(:catarc))
  end

  test "should destroy catarc" do
    assert_difference('Catarc.count', -1) do
      delete :destroy, :id => catarcs(:one).to_param
    end

    assert_redirected_to catarcs_path
  end
end
