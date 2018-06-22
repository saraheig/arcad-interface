require 'test_helper'

class CompetencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competence = competences(:one)
  end

  test "should get index" do
    get competences_url
    assert_response :success
  end

  test "should get new" do
    get new_competence_url
    assert_response :success
  end

  test "should create competence" do
    assert_difference('Competence.count') do
      post competences_url, params: { competence: { name: @competence.name } }
    end

    assert_redirected_to competence_url(Competence.last)
  end

  test "should show competence" do
    get competence_url(@competence)
    assert_response :success
  end

  test "should get edit" do
    get edit_competence_url(@competence)
    assert_response :success
  end

  test "should update competence" do
    patch competence_url(@competence), params: { competence: { name: @competence.name } }
    assert_redirected_to competence_url(@competence)
  end

  test "should destroy competence" do
    assert_difference('Competence.count', -1) do
      delete competence_url(@competence)
    end

    assert_redirected_to competences_url
  end
end
