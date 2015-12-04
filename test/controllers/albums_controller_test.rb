require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  setup do
    @album = albums(:one)
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

  test "index response should have a album key" do
    get :index, format: :json
    assert json_response['albums']
  end

  test "show response should have a album key" do
    get :show, id: @album, format: :json
    assert json_response['album']
  end
end
