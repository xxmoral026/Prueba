require 'test_helper'

class Events1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @events1 = events1s(:one)
  end

  test "should get index" do
    get events1s_url
    assert_response :success
  end

  test "should get new" do
    get new_events1_url
    assert_response :success
  end

  test "should create events1" do
    assert_difference('Events1.count') do
      post events1s_url, params: { events1: { end: @events1.end, start: @events1.start, title: @events1.title } }
    end

    assert_redirected_to events1_url(Events1.last)
  end

  test "should show events1" do
    get events1_url(@events1)
    assert_response :success
  end

  test "should get edit" do
    get edit_events1_url(@events1)
    assert_response :success
  end

  test "should update events1" do
    patch events1_url(@events1), params: { events1: { end: @events1.end, start: @events1.start, title: @events1.title } }
    assert_redirected_to events1_url(@events1)
  end

  test "should destroy events1" do
    assert_difference('Events1.count', -1) do
      delete events1_url(@events1)
    end

    assert_redirected_to events1s_url
  end
end
