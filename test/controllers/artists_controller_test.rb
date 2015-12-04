require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index, format: :json
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should show artist" do
    get :show, id: @artist, format: :json
    assert_response :success
  end

  test "index response should have a artist key" do
    get :index, format: :json
    assert json_response['artists']
  end

  test "show response should have a artist key" do
    get :show, id: @artist, format: :json
    assert json_response['artist']
  end
end
