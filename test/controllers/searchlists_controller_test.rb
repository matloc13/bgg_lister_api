require 'test_helper'

class SearchlistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @searchlist = searchlists(:one)
  end

  test "should get index" do
    get searchlists_url, as: :json
    assert_response :success
  end

  test "should create searchlist" do
    assert_difference('Searchlist.count') do
      post searchlists_url, params: { searchlist: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show searchlist" do
    get searchlist_url(@searchlist), as: :json
    assert_response :success
  end

  test "should update searchlist" do
    patch searchlist_url(@searchlist), params: { searchlist: {  } }, as: :json
    assert_response 200
  end

  test "should destroy searchlist" do
    assert_difference('Searchlist.count', -1) do
      delete searchlist_url(@searchlist), as: :json
    end

    assert_response 204
  end
end
