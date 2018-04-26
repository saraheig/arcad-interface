require "application_system_test_case"

class InstrumentsGroupsTest < ApplicationSystemTestCase
  setup do
    @instruments_group = instruments_groups(:one)
  end

  test "visiting the index" do
    visit instruments_groups_url
    assert_selector "h1", text: "Instruments Groups"
  end

  test "creating a Instruments group" do
    visit instruments_groups_url
    click_on "New Instruments Group"

    fill_in "Abbrev Ch", with: @instruments_group.abbrev_ch
    fill_in "Abbrev Fr", with: @instruments_group.abbrev_fr
    fill_in "Appeal Proc", with: @instruments_group.appeal_proc
    fill_in "Country", with: @instruments_group.country
    fill_in "Descr Appeal Proc", with: @instruments_group.descr_appeal_proc
    fill_in "Description", with: @instruments_group.description
    fill_in "Law", with: @instruments_group.law
    fill_in "Name Ch", with: @instruments_group.name_ch
    fill_in "Name Fr", with: @instruments_group.name_fr
    fill_in "Plan", with: @instruments_group.plan
    click_on "Create Instruments group"

    assert_text "Instruments group was successfully created"
    click_on "Back"
  end

  test "updating a Instruments group" do
    visit instruments_groups_url
    click_on "Edit", match: :first

    fill_in "Abbrev Ch", with: @instruments_group.abbrev_ch
    fill_in "Abbrev Fr", with: @instruments_group.abbrev_fr
    fill_in "Appeal Proc", with: @instruments_group.appeal_proc
    fill_in "Country", with: @instruments_group.country
    fill_in "Descr Appeal Proc", with: @instruments_group.descr_appeal_proc
    fill_in "Description", with: @instruments_group.description
    fill_in "Law", with: @instruments_group.law
    fill_in "Name Ch", with: @instruments_group.name_ch
    fill_in "Name Fr", with: @instruments_group.name_fr
    fill_in "Plan", with: @instruments_group.plan
    click_on "Update Instruments group"

    assert_text "Instruments group was successfully updated"
    click_on "Back"
  end

  test "destroying a Instruments group" do
    visit instruments_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Instruments group was successfully destroyed"
  end
end
