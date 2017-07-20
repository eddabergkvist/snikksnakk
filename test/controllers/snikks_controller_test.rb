require 'test_helper'

class SnikksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snikk = snikks(:one)
  end

  test "should get index" do
    get snikks_url
    assert_response :success
  end

  test "should get new" do
    get new_snikk_url
    assert_response :success
  end

  test "should create snikk" do
    assert_difference('Snikk.count') do
      post snikks_url, params: { snikk: { body: @snikk.body, user_id: @snikk.user_id } }
    end

    assert_redirected_to snikk_url(Snikk.last)
  end

  test "should show snikk" do
    get snikk_url(@snikk)
    assert_response :success
  end

  test "should get edit" do
    get edit_snikk_url(@snikk)
    assert_response :success
  end

  test "should update snikk" do
    patch snikk_url(@snikk), params: { snikk: { body: @snikk.body, user_id: @snikk.user_id } }
    assert_redirected_to snikk_url(@snikk)
  end

  test "should destroy snikk" do
    assert_difference('Snikk.count', -1) do
      delete snikk_url(@snikk)
    end

    assert_redirected_to snikks_url
  end
end
