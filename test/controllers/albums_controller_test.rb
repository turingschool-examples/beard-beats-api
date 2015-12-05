require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  setup do
    @album = albums(:womanking)
  end

  test "should get index" do
    get :index, format: :json
    assert_response :success
    assert_not_nil assigns(:albums)
  end

  test "should show album" do
    get :show, id: @album, format: :json
    assert_response :success
  end

  test "has an index response that should have a album key" do
    get :index, format: :json
    assert json_response['albums']
  end

  test "has an show response that should have a album key" do
    get :show, id: @album, format: :json
    assert json_response['album']
  end

  test "should have an array of songs" do
    get :show, id: @album, format: :json
    assert_kind_of Array, json_response['album']['songs']
  end

  test "should have an array of song ids" do
    get :show, id: @album, format: :json
    assert_kind_of Fixnum, json_response['album']['songs'].first
  end
end
