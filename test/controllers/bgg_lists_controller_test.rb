require 'test_helper'

class BggListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bgg_list = bgg_lists(:one)
  end

  test "should get index" do
    get bgg_lists_url, as: :json
    assert_response :success
  end

  test "should create bgg_list" do
    assert_difference('BggList.count') do
      post bgg_lists_url, params: { bgg_list: { name: @bgg_list.name } }, as: :json
    end

    assert_response 201
  end

  test "should show bgg_list" do
    get bgg_list_url(@bgg_list), as: :json
    assert_response :success
  end

  test "should update bgg_list" do
    patch bgg_list_url(@bgg_list), params: { bgg_list: { name: @bgg_list.name } }, as: :json
    assert_response 200
  end

  test "should destroy bgg_list" do
    assert_difference('BggList.count', -1) do
      delete bgg_list_url(@bgg_list), as: :json
    end

    assert_response 204
  end
end
