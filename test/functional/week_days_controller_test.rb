require 'test_helper'

class WeekDaysControllerTest < ActionController::TestCase
  setup do
    @week_day = week_days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:week_days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create week_day" do
    assert_difference('WeekDay.count') do
      post :create, week_day: @week_day.attributes
    end

    assert_redirected_to week_day_path(assigns(:week_day))
  end

  test "should show week_day" do
    get :show, id: @week_day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @week_day
    assert_response :success
  end

  test "should update week_day" do
    put :update, id: @week_day, week_day: @week_day.attributes
    assert_redirected_to week_day_path(assigns(:week_day))
  end

  test "should destroy week_day" do
    assert_difference('WeekDay.count', -1) do
      delete :destroy, id: @week_day
    end

    assert_redirected_to week_days_path
  end
end
