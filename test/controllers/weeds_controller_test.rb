require 'test_helper'

class WeedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weed = weeds(:one)
  end

  test "should get index" do
    get weeds_url
    assert_response :success
  end

  test "should get new" do
    get new_weed_url
    assert_response :success
  end

  test "should create weed" do
    assert_difference('Weed.count') do
      post weeds_url, params: { weed: { activites: @weed.activites, cbd_percentage: @weed.cbd_percentage, feelings: @weed.feelings, lineage: @weed.lineage, strain: @weed.strain, thc_percentage: @weed.thc_percentage } }
    end

    assert_redirected_to weed_url(Weed.last)
  end

  test "should show weed" do
    get weed_url(@weed)
    assert_response :success
  end

  test "should get edit" do
    get edit_weed_url(@weed)
    assert_response :success
  end

  test "should update weed" do
    patch weed_url(@weed), params: { weed: { activites: @weed.activites, cbd_percentage: @weed.cbd_percentage, feelings: @weed.feelings, lineage: @weed.lineage, strain: @weed.strain, thc_percentage: @weed.thc_percentage } }
    assert_redirected_to weed_url(@weed)
  end

  test "should destroy weed" do
    assert_difference('Weed.count', -1) do
      delete weed_url(@weed)
    end

    assert_redirected_to weeds_url
  end
end
