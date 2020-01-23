require 'test_helper'

class Admin::DishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_dish = admin_dishes(:one)
  end

  test "should get index" do
    get admin_dishes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dish_url
    assert_response :success
  end

  test "should create admin_dish" do
    assert_difference('Admin::Dish.count') do
      post admin_dishes_url, params: { admin_dish: {  } }
    end

    assert_redirected_to admin_dish_url(Admin::Dish.last)
  end

  test "should show admin_dish" do
    get admin_dish_url(@admin_dish)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dish_url(@admin_dish)
    assert_response :success
  end

  test "should update admin_dish" do
    patch admin_dish_url(@admin_dish), params: { admin_dish: {  } }
    assert_redirected_to admin_dish_url(@admin_dish)
  end

  test "should destroy admin_dish" do
    assert_difference('Admin::Dish.count', -1) do
      delete admin_dish_url(@admin_dish)
    end

    assert_redirected_to admin_dishes_url
  end
end
