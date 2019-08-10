require 'test_helper'

class ListnamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listname = listnames(:one)
  end

  test "should get index" do
    get listnames_url, as: :json
    assert_response :success
  end

  test "should create listname" do
    assert_difference('Listname.count') do
      post listnames_url, params: { listname: { bggid: @listname.bggid, img: @listname.img } }, as: :json
    end

    assert_response 201
  end

  test "should show listname" do
    get listname_url(@listname), as: :json
    assert_response :success
  end

  test "should update listname" do
    patch listname_url(@listname), params: { listname: { bggid: @listname.bggid, img: @listname.img } }, as: :json
    assert_response 200
  end

  test "should destroy listname" do
    assert_difference('Listname.count', -1) do
      delete listname_url(@listname), as: :json
    end

    assert_response 204
  end
end
