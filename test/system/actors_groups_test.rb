require "application_system_test_case"

class ActorsGroupsTest < ApplicationSystemTestCase
  setup do
    @actors_group = actors_groups(:one)
  end

  test "visiting the index" do
    visit actors_groups_url
    assert_selector "h1", text: "Actors Groups"
  end

  test "creating a Actors group" do
    visit actors_groups_url
    click_on "New Actors Group"

    fill_in "Administration", with: @actors_group.administration
    fill_in "Category", with: @actors_group.category
    fill_in "Executive", with: @actors_group.executive
    fill_in "France", with: @actors_group.france
    fill_in "Legislative", with: @actors_group.legislative
    fill_in "Mission", with: @actors_group.mission
    fill_in "Name", with: @actors_group.name
    fill_in "Nuts", with: @actors_group.nuts
    fill_in "Swiss", with: @actors_group.swiss
    click_on "Create Actors group"

    assert_text "Actors group was successfully created"
    click_on "Back"
  end

  test "updating a Actors group" do
    visit actors_groups_url
    click_on "Edit", match: :first

    fill_in "Administration", with: @actors_group.administration
    fill_in "Category", with: @actors_group.category
    fill_in "Executive", with: @actors_group.executive
    fill_in "France", with: @actors_group.france
    fill_in "Legislative", with: @actors_group.legislative
    fill_in "Mission", with: @actors_group.mission
    fill_in "Name", with: @actors_group.name
    fill_in "Nuts", with: @actors_group.nuts
    fill_in "Swiss", with: @actors_group.swiss
    click_on "Update Actors group"

    assert_text "Actors group was successfully updated"
    click_on "Back"
  end

  test "destroying a Actors group" do
    visit actors_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actors group was successfully destroyed"
  end
end
