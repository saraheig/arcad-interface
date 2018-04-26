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

    fill_in "Abbreviation", with: @instrument.abbreviation
    fill_in "Appeal Proc", with: @instrument.appeal_proc
    fill_in "Descr Appeal Proc", with: @instrument.descr_appeal_proc
    fill_in "Description", with: @instrument.description
    fill_in "Instruments Group", with: @instrument.instruments_group_id
    fill_in "Last Rev Date", with: @instrument.last_rev_date
    fill_in "Name", with: @instrument.name
    fill_in "Planning", with: @instrument.planning
    fill_in "Start Date", with: @instrument.start_date
    fill_in "Transboundary", with: @instrument.transboundary
    click_on "Create Instrument"

    assert_text "Instrument was successfully created"
    click_on "Back"
  end

  test "updating a Instrument" do
    visit instruments_url
    click_on "Edit", match: :first

    fill_in "Abbreviation", with: @instrument.abbreviation
    fill_in "Appeal Proc", with: @instrument.appeal_proc
    fill_in "Descr Appeal Proc", with: @instrument.descr_appeal_proc
    fill_in "Description", with: @instrument.description
    fill_in "Instruments Group", with: @instrument.instruments_group_id
    fill_in "Last Rev Date", with: @instrument.last_rev_date
    fill_in "Name", with: @instrument.name
    fill_in "Planning", with: @instrument.planning
    fill_in "Start Date", with: @instrument.start_date
    fill_in "Transboundary", with: @instrument.transboundary
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
