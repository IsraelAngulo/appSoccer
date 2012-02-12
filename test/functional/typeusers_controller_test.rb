require 'test_helper'

class TypeusersControllerTest < ActionController::TestCase
  setup do
    @typeuser = typeusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typeusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typeuser" do
    assert_difference('Typeuser.count') do
      post :create, typeuser: @typeuser.attributes
    end

    assert_redirected_to typeuser_path(assigns(:typeuser))
  end

  test "should show typeuser" do
    get :show, id: @typeuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typeuser
    assert_response :success
  end

  test "should update typeuser" do
    put :update, id: @typeuser, typeuser: @typeuser.attributes
    assert_redirected_to typeuser_path(assigns(:typeuser))
  end

  test "should destroy typeuser" do
    assert_difference('Typeuser.count', -1) do
      delete :destroy, id: @typeuser
    end

    assert_redirected_to typeusers_path
  end
end
