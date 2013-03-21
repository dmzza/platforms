require 'test_helper'

class TracksControllerTest < ActionController::TestCase
  setup do
    @track = tracks(:two)
    @route = routes(:brooklyn)
  end

  test "should get index" do
    get :index, :route_id => @route.id
    assert_response :success
    assert_not_nil assigns(:tracks)
  end

  test "should get new" do
    get :new, :route_id => @route.id
    assert_response :success
  end

  test "should create track" do
    assert_difference('Track.count') do
      post :create, track: { duration: @track.duration }, :route_id => @route.id
    end

    assert_redirected_to route_tracks_path(@route)
  end

  test "should show track" do
    get :show, id: @track, :route_id => @route.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @track, :route_id => @route.id
    assert_response :success
  end

  test "should update track" do
    put :update, id: @track, track: { duration: @track.duration }, :route_id => @route.id
    assert_redirected_to route_tracks_path(@route)
  end

  test "should destroy track" do
    assert_difference('Track.count', -1) do
      delete :destroy, id: @track, :route_id => @route.id
    end

    assert_redirected_to route_tracks_path(@route)
  end
end
