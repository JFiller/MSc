require 'test_helper'

class ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get item_new_url
    assert_response :success
  end

  test "should get create" do
    get item_create_url
    assert_response :success
  end

end
