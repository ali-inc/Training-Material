require "application_system_test_case"

class SandwichesTest < ApplicationSystemTestCase
  setup do
    @sandwich = sandwiches(:one)
  end

  test "visiting the index" do
    visit sandwiches_url
    assert_selector "h1", text: "Sandwiches"
  end

  test "creating a Sandwich" do
    visit sandwiches_url
    click_on "New Sandwich"

    fill_in "Filling", with: @sandwich.filling
    fill_in "Name", with: @sandwich.name
    fill_in "Price", with: @sandwich.price
    click_on "Create Sandwich"

    assert_text "Sandwich was successfully created"
    click_on "Back"
  end

  test "updating a Sandwich" do
    visit sandwiches_url
    click_on "Edit", match: :first

    fill_in "Filling", with: @sandwich.filling
    fill_in "Name", with: @sandwich.name
    fill_in "Price", with: @sandwich.price
    click_on "Update Sandwich"

    assert_text "Sandwich was successfully updated"
    click_on "Back"
  end

  test "destroying a Sandwich" do
    visit sandwiches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sandwich was successfully destroyed"
  end
end
