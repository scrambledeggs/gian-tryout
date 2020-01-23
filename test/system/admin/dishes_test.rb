require "application_system_test_case"

class Admin::DishesTest < ApplicationSystemTestCase
  setup do
    @admin_dish = admin_dishes(:one)
  end

  test "visiting the index" do
    visit admin_dishes_url
    assert_selector "h1", text: "Admin/Dishes"
  end

  test "creating a Dish" do
    visit admin_dishes_url
    click_on "New Admin/Dish"

    click_on "Create Dish"

    assert_text "Dish was successfully created"
    click_on "Back"
  end

  test "updating a Dish" do
    visit admin_dishes_url
    click_on "Edit", match: :first

    click_on "Update Dish"

    assert_text "Dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Dish" do
    visit admin_dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dish was successfully destroyed"
  end
end
