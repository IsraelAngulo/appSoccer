require 'test_helper'

class TypedocumentsControllerTest < ActionController::TestCase
  setup do
    @typedocument = typedocuments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typedocuments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typedocument" do
    assert_difference('Typedocument.count') do
      post :create, typedocument: @typedocument.attributes
    end

    assert_redirected_to typedocument_path(assigns(:typedocument))
  end

  test "should show typedocument" do
    get :show, id: @typedocument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typedocument
    assert_response :success
  end

  test "should update typedocument" do
    put :update, id: @typedocument, typedocument: @typedocument.attributes
    assert_redirected_to typedocument_path(assigns(:typedocument))
  end

  test "should destroy typedocument" do
    assert_difference('Typedocument.count', -1) do
      delete :destroy, id: @typedocument
    end

    assert_redirected_to typedocuments_path
  end
end
