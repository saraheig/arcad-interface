require "application_system_test_case"

class CompetencesTest < ApplicationSystemTestCase
  setup do
    @competence = competences(:one)
  end

  test "visiting the index" do
    visit competences_url
    assert_selector "h1", text: "Competences"
  end

  test "creating a Competence" do
    visit competences_url
    click_on "New Competence"

    fill_in "Name", with: @competence.name
    click_on "Create Competence"

    assert_text "Competence was successfully created"
    click_on "Back"
  end

  test "updating a Competence" do
    visit competences_url
    click_on "Edit", match: :first

    fill_in "Name", with: @competence.name
    click_on "Update Competence"

    assert_text "Competence was successfully updated"
    click_on "Back"
  end

  test "destroying a Competence" do
    visit competences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Competence was successfully destroyed"
  end
end
