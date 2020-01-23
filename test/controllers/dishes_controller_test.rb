require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dishes_index_url
    assert_response :success
  end

  test "should get new" do
    get dishes_new_url
    assert_response :success
  end

  test "should get edit" do
    get dishes_edit_url
    assert_response :success
  end

end
