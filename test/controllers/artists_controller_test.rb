require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:ironandwine)
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

  test "has an index response that should have a artist key" do
    get :index, format: :json
    assert json_response['artists']
  end

  test "has an show response that should have a artist key" do
    get :show, id: @artist, format: :json
    assert json_response['artist']
  end

  test "should have an array of albums" do
    get :show, id: @artist, format: :json
    assert_kind_of Array, json_response['artist']['albums']
  end

  test "should have an array of album ids" do
    get :show, id: @artist, format: :json
    assert_kind_of Fixnum, json_response['artist']['albums'].first
  end
end
