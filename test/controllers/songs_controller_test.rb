require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get :index, format: :json
    assert_response :success
    assert_not_nil assigns(:songs)
  end

  test "should show song" do
    get :show, id: @song, format: :json
    assert_response :success
  end

  test "index action should have a song key" do
    get :index, format: :json
    assert json_response['songs']
  end

  test "show action should have a song key" do
    get :show, id: @song, format: :json
    assert json_response['song']
  end
end
