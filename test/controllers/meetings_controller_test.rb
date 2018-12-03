require 'test_helper'

class MeetingsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get meetings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get meetings_destroy_url
    assert_response :success
  end

end
