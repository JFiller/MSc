require 'test_helper'

class Application::PageControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get application_page_controller_home_url
    assert_response :success
  end

end
