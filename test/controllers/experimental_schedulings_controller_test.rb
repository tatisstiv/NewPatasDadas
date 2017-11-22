require 'test_helper'

class ExperimentalSchedulingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experimental_scheduling = experimental_schedulings(:one)
  end

  test "should get index" do
    get experimental_schedulings_url
    assert_response :success
  end

  test "should get new" do
    get new_experimental_scheduling_url
    assert_response :success
  end

  test "should create experimental_scheduling" do
    assert_difference('ExperimentalScheduling.count') do
      post experimental_schedulings_url, params: { experimental_scheduling: { animal_id: @experimental_scheduling.animal_id, date_time: @experimental_scheduling.date_time, volunteer_id: @experimental_scheduling.volunteer_id } }
    end

    assert_redirected_to experimental_scheduling_url(ExperimentalScheduling.last)
  end

  test "should show experimental_scheduling" do
    get experimental_scheduling_url(@experimental_scheduling)
    assert_response :success
  end

  test "should get edit" do
    get edit_experimental_scheduling_url(@experimental_scheduling)
    assert_response :success
  end

  test "should update experimental_scheduling" do
    patch experimental_scheduling_url(@experimental_scheduling), params: { experimental_scheduling: { animal_id: @experimental_scheduling.animal_id, date_time: @experimental_scheduling.date_time, volunteer_id: @experimental_scheduling.volunteer_id } }
    assert_redirected_to experimental_scheduling_url(@experimental_scheduling)
  end

  test "should destroy experimental_scheduling" do
    assert_difference('ExperimentalScheduling.count', -1) do
      delete experimental_scheduling_url(@experimental_scheduling)
    end

    assert_redirected_to experimental_schedulings_url
  end
end
