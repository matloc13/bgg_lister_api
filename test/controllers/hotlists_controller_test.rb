require 'test_helper'

class HotlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotlist = hotlists(:one)
  end

  test "should get index" do
    get hotlists_url, as: :json
    assert_response :success
  end

  test "should create hotlist" do
    assert_difference('Hotlist.count') do
      post hotlists_url, params: { hotlist: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show hotlist" do
    get hotlist_url(@hotlist), as: :json
    assert_response :success
  end

  test "should update hotlist" do
    patch hotlist_url(@hotlist), params: { hotlist: {  } }, as: :json
    assert_response 200
  end

  test "should destroy hotlist" do
    assert_difference('Hotlist.count', -1) do
      delete hotlist_url(@hotlist), as: :json
    end

    assert_response 204
  end
end
