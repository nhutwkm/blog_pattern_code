require 'test_helper'

class CammandsControllerTest < ActionController::TestCase
  setup do
    @cammand = cammands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cammands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cammand" do
    assert_difference('Cammand.count') do
      post :create, cammand: { description: @cammand.description, id_user: @cammand.id_user, title: @cammand.title }
    end

    assert_redirected_to cammand_path(assigns(:cammand))
  end

  test "should show cammand" do
    get :show, id: @cammand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cammand
    assert_response :success
  end

  test "should update cammand" do
    patch :update, id: @cammand, cammand: { description: @cammand.description, id_user: @cammand.id_user, title: @cammand.title }
    assert_redirected_to cammand_path(assigns(:cammand))
  end

  test "should destroy cammand" do
    assert_difference('Cammand.count', -1) do
      delete :destroy, id: @cammand
    end

    assert_redirected_to cammands_path
  end
end
