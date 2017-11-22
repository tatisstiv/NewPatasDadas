require 'test_helper'

class FixedSchedulingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fixed_scheduling = fixed_schedulings(:one)
  end

  test "should get index" do
    get fixed_schedulings_url
    assert_response :success
  end

  test "should get new" do
    get new_fixed_scheduling_url
    assert_response :success
  end

  test "should create fixed_scheduling" do
    assert_difference('FixedScheduling.count') do
      post fixed_schedulings_url, params: { fixed_scheduling: { animal_id: @fixed_scheduling.animal_id, day_of_week: @fixed_scheduling.day_of_week, volunteer_id: @fixed_scheduling.volunteer_id } }
    end

    assert_redirected_to fixed_scheduling_url(FixedScheduling.last)
  end

  test "should show fixed_scheduling" do
    get fixed_scheduling_url(@fixed_scheduling)
    assert_response :success
  end

  test "should get edit" do
    get edit_fixed_scheduling_url(@fixed_scheduling)
    assert_response :success
  end

  test "should update fixed_scheduling" do
    patch fixed_scheduling_url(@fixed_scheduling), params: { fixed_scheduling: { animal_id: @fixed_scheduling.animal_id, day_of_week: @fixed_scheduling.day_of_week, volunteer_id: @fixed_scheduling.volunteer_id } }
    assert_redirected_to fixed_scheduling_url(@fixed_scheduling)
  end

  test "should destroy fixed_scheduling" do
    assert_difference('FixedScheduling.count', -1) do
      delete fixed_scheduling_url(@fixed_scheduling)
    end

    assert_redirected_to fixed_schedulings_url
  end
end
