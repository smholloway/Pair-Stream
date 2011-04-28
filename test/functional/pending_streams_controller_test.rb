require 'test_helper'

class PendingStreamsControllerTest < ActionController::TestCase
  setup do
    @pending_stream = pending_streams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pending_streams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pending_stream" do
    assert_difference('PendingStream.count') do
      post :create, :pending_stream => @pending_stream.attributes
    end

    assert_redirected_to pending_stream_path(assigns(:pending_stream))
  end

  test "should show pending_stream" do
    get :show, :id => @pending_stream.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pending_stream.to_param
    assert_response :success
  end

  test "should update pending_stream" do
    put :update, :id => @pending_stream.to_param, :pending_stream => @pending_stream.attributes
    assert_redirected_to pending_stream_path(assigns(:pending_stream))
  end

  test "should destroy pending_stream" do
    assert_difference('PendingStream.count', -1) do
      delete :destroy, :id => @pending_stream.to_param
    end

    assert_redirected_to pending_streams_path
  end
end
