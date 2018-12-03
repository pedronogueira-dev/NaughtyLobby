require 'test_helper'

class PoliticiansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get politicians_index_url
    assert_response :success
  end

  test "should get show" do
    get politicians_show_url
    assert_response :success
  end

  test "should get search_by_name" do
    get politicians_search_by_name_url
    assert_response :success
  end

end
