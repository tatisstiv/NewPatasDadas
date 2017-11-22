require 'test_helper'

class WalkingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @walking = walkings(:one)
  end

  test "should get index" do
    get walkings_url
    assert_response :success
  end

  test "should get new" do
    get new_walking_url
    assert_response :success
  end

  test "should create walking" do
    assert_difference('Walking.count') do
      post walkings_url, params: { walking: { animal_id: @walking.animal_id, date: @walking.date, volunteer_id: @walking.volunteer_id } }
    end

    assert_redirected_to walking_url(Walking.last)
  end

  test "should show walking" do
    get walking_url(@walking)
    assert_response :success
  end

  test "should get edit" do
    get edit_walking_url(@walking)
    assert_response :success
  end

  test "should update walking" do
    patch walking_url(@walking), params: { walking: { animal_id: @walking.animal_id, date: @walking.date, volunteer_id: @walking.volunteer_id } }
    assert_redirected_to walking_url(@walking)
  end

  test "should destroy walking" do
    assert_difference('Walking.count', -1) do
      delete walking_url(@walking)
    end

    assert_redirected_to walkings_url
  end
end
