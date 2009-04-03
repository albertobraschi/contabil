require 'test_helper'

class ArchivesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archive" do
    assert_difference('Archive.count') do
      post :create, :archive => { }
    end

    assert_redirected_to archive_path(assigns(:archive))
  end

  test "should show archive" do
    get :show, :id => archives(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => archives(:one).to_param
    assert_response :success
  end

  test "should update archive" do
    put :update, :id => archives(:one).to_param, :archive => { }
    assert_redirected_to archive_path(assigns(:archive))
  end

  test "should destroy archive" do
    assert_difference('Archive.count', -1) do
      delete :destroy, :id => archives(:one).to_param
    end

    assert_redirected_to archives_path
  end
end
