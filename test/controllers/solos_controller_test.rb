require 'test_helper'

class SolosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solo = solos(:one)
  end

  test "should get index" do
    get solos_url, as: :json
    assert_response :success
  end

  test "should create solo" do
    assert_difference('Solo.count') do
      post solos_url, params: { solo: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show solo" do
    get solo_url(@solo), as: :json
    assert_response :success
  end

  test "should update solo" do
    patch solo_url(@solo), params: { solo: {  } }, as: :json
    assert_response 200
  end

  test "should destroy solo" do
    assert_difference('Solo.count', -1) do
      delete solo_url(@solo), as: :json
    end

    assert_response 204
  end
end
