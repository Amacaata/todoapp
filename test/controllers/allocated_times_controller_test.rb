require 'test_helper'

class AllocatedTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allocated_time = allocated_times(:one)
  end

  test "should get index" do
    get allocated_times_url
    assert_response :success
  end

  test "should get new" do
    get new_allocated_time_url
    assert_response :success
  end

  test "should create allocated_time" do
    assert_difference('AllocatedTime.count') do
      post allocated_times_url, params: { allocated_time: { done: @allocated_time.done, end: @allocated_time.end, notes: @allocated_time.notes, start: @allocated_time.start, task_id: @allocated_time.task_id, user_id: @allocated_time.user_id } }
    end

    assert_redirected_to allocated_time_url(AllocatedTime.last)
  end

  test "should show allocated_time" do
    get allocated_time_url(@allocated_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_allocated_time_url(@allocated_time)
    assert_response :success
  end

  test "should update allocated_time" do
    patch allocated_time_url(@allocated_time), params: { allocated_time: { done: @allocated_time.done, end: @allocated_time.end, notes: @allocated_time.notes, start: @allocated_time.start, task_id: @allocated_time.task_id, user_id: @allocated_time.user_id } }
    assert_redirected_to allocated_time_url(@allocated_time)
  end

  test "should destroy allocated_time" do
    assert_difference('AllocatedTime.count', -1) do
      delete allocated_time_url(@allocated_time)
    end

    assert_redirected_to allocated_times_url
  end
end
