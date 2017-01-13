require 'test_helper'

class GoodVibesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @good_vibe = good_vibes(:one)
  end

  test "should get index" do
    get good_vibes_url
    assert_response :success
  end

  test "should get new" do
    get new_good_vibe_url
    assert_response :success
  end

  test "should create good_vibe" do
    assert_difference('GoodVibe.count') do
      post good_vibes_url, params: { good_vibe: { ReplayDate: @good_vibe.ReplayDate, ReplayName: @good_vibe.ReplayName } }
    end

    assert_redirected_to good_vibe_url(GoodVibe.last)
  end

  test "should show good_vibe" do
    get good_vibe_url(@good_vibe)
    assert_response :success
  end

  test "should get edit" do
    get edit_good_vibe_url(@good_vibe)
    assert_response :success
  end

  test "should update good_vibe" do
    patch good_vibe_url(@good_vibe), params: { good_vibe: { ReplayDate: @good_vibe.ReplayDate, ReplayName: @good_vibe.ReplayName } }
    assert_redirected_to good_vibe_url(@good_vibe)
  end

  test "should destroy good_vibe" do
    assert_difference('GoodVibe.count', -1) do
      delete good_vibe_url(@good_vibe)
    end

    assert_redirected_to good_vibes_url
  end
end
