require "application_system_test_case"

class InstrumentsTest < ApplicationSystemTestCase
  setup do
    @instrument = instruments(:one)
  end

  test "visiting the index" do
    visit instruments_url
    assert_selector "h1", text: "Instruments"
  end

  test "creating a Instrument" do
    visit instruments_url
    click_on "New Instrument"

    fill_in "Brand", with: @instrument.brand
    fill_in "Condition", with: @instrument.condition
    fill_in "Description", with: @instrument.description
    fill_in "Finish", with: @instrument.finish
    fill_in "Model", with: @instrument.model
    fill_in "Price", with: @instrument.price
    fill_in "Title", with: @instrument.title
    click_on "Create Instrument"

    assert_text "Instrument was successfully created"
    click_on "Back"
  end

  test "updating a Instrument" do
    visit instruments_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @instrument.brand
    fill_in "Condition", with: @instrument.condition
    fill_in "Description", with: @instrument.description
    fill_in "Finish", with: @instrument.finish
    fill_in "Model", with: @instrument.model
    fill_in "Price", with: @instrument.price
    fill_in "Title", with: @instrument.title
    click_on "Update Instrument"

    assert_text "Instrument was successfully updated"
    click_on "Back"
  end

  test "destroying a Instrument" do
    visit instruments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instrument was successfully destroyed"
  end
end
