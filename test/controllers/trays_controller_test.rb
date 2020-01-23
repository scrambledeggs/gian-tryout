require 'test_helper'

class TraysControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get trays_show_url
    assert_response :success
  end

end
