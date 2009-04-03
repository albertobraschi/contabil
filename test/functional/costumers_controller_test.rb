require 'test_helper'

class CostumersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:costumers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create costumer" do
    assert_difference('Costumer.count') do
      post :create, :costumer => { }
    end

    assert_redirected_to costumer_path(assigns(:costumer))
  end

  test "should show costumer" do
    get :show, :id => costumers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => costumers(:one).to_param
    assert_response :success
  end

  test "should update costumer" do
    put :update, :id => costumers(:one).to_param, :costumer => { }
    assert_redirected_to costumer_path(assigns(:costumer))
  end

  test "should destroy costumer" do
    assert_difference('Costumer.count', -1) do
      delete :destroy, :id => costumers(:one).to_param
    end

    assert_redirected_to costumers_path
  end
end
