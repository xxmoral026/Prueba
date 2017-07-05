require 'test_helper'

class Events2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @events2 = events2s(:one)
  end

  test "should get index" do
    get events2s_url
    assert_response :success
  end

  test "should get new" do
    get new_events2_url
    assert_response :success
  end

  test "should create events2" do
    assert_difference('Events2.count') do
      post events2s_url, params: { events2: { end: @events2.end, start: @events2.start, title: @events2.title } }
    end

    assert_redirected_to events2_url(Events2.last)
  end

  test "should show events2" do
    get events2_url(@events2)
    assert_response :success
  end

  test "should get edit" do
    get edit_events2_url(@events2)
    assert_response :success
  end

  test "should update events2" do
    patch events2_url(@events2), params: { events2: { end: @events2.end, start: @events2.start, title: @events2.title } }
    assert_redirected_to events2_url(@events2)
  end

  test "should destroy events2" do
    assert_difference('Events2.count', -1) do
      delete events2_url(@events2)
    end

    assert_redirected_to events2s_url
  end
end
