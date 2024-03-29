require 'test_helper'

class PlatformsControllerTest < ActionController::TestCase
  setup do
    @platform = platforms(:eighthaveL)
    @station = stations(:thirdave)
  end

  test "should get index" do
    get :index, :station_id => @station.id
    assert_response :success
    assert_not_nil assigns(:platforms)
  end

  test "should get new" do
    get :new, :station_id => @station.id
    assert_response :success
  end

  test "should create platform" do
    assert_difference('Platform.count') do
      post :create, platform: { heading: @platform.heading }, :station_id => @station.id
    end

    assert_redirected_to station_platforms_path(@station)
  end

  test "should show platform" do
    get :show, id: @platform, :station_id => @station.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @platform, :station_id => @station.id
    assert_response :success
  end

  test "should update platform" do
    put :update, id: @platform, :station_id => @station.id, platform: { heading: @platform.heading }
    assert_redirected_to station_platforms_path(@station)
  end

  test "should destroy platform" do
    assert_difference('Platform.count', -1) do
      delete :destroy, id: @platform, :station_id => @station.id
    end

    assert_redirected_to station_platforms_path(@station)
  end
end
