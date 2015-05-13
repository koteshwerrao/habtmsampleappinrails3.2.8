require 'test_helper'

class StudnetsControllerTest < ActionController::TestCase
  setup do
    @studnet = studnets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studnets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studnet" do
    assert_difference('Studnet.count') do
      post :create, studnet: { address: @studnet.address, city: @studnet.city, name: @studnet.name, state: @studnet.state }
    end

    assert_redirected_to studnet_path(assigns(:studnet))
  end

  test "should show studnet" do
    get :show, id: @studnet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studnet
    assert_response :success
  end

  test "should update studnet" do
    put :update, id: @studnet, studnet: { address: @studnet.address, city: @studnet.city, name: @studnet.name, state: @studnet.state }
    assert_redirected_to studnet_path(assigns(:studnet))
  end

  test "should destroy studnet" do
    assert_difference('Studnet.count', -1) do
      delete :destroy, id: @studnet
    end

    assert_redirected_to studnets_path
  end
end
