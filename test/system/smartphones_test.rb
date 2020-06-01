require "application_system_test_case"

class SmartphonesTest < ApplicationSystemTestCase
  setup do
    @smartphone = smartphones(:one)
  end

  test "visiting the index" do
    visit smartphones_url
    assert_selector "h1", text: "Smartphones"
  end

  test "creating a Smartphone" do
    visit smartphones_url
    click_on "New Smartphone"

    fill_in "Brand", with: @smartphone.brand
    fill_in "Color", with: @smartphone.color
    fill_in "Condition", with: @smartphone.condition
    fill_in "Description", with: @smartphone.description
    fill_in "Model", with: @smartphone.model
    fill_in "Price", with: @smartphone.price
    fill_in "Title", with: @smartphone.title
    click_on "Create Smartphone"

    assert_text "Smartphone was successfully created"
    click_on "Back"
  end

  test "updating a Smartphone" do
    visit smartphones_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @smartphone.brand
    fill_in "Color", with: @smartphone.color
    fill_in "Condition", with: @smartphone.condition
    fill_in "Description", with: @smartphone.description
    fill_in "Model", with: @smartphone.model
    fill_in "Price", with: @smartphone.price
    fill_in "Title", with: @smartphone.title
    click_on "Update Smartphone"

    assert_text "Smartphone was successfully updated"
    click_on "Back"
  end

  test "destroying a Smartphone" do
    visit smartphones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Smartphone was successfully destroyed"
  end
end
