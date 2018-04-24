require 'test_helper'

class ActorsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actors_group = actors_groups(:one)
  end

  test "should get index" do
    get actors_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_actors_group_url
    assert_response :success
  end

  test "should create actors_group" do
    assert_difference('ActorsGroup.count') do
      post actors_groups_url, params: { actors_group: { administration: @actors_group.administration, category: @actors_group.category, executive: @actors_group.executive, france: @actors_group.france, legislative: @actors_group.legislative, mission: @actors_group.mission, name: @actors_group.name, nuts: @actors_group.nuts, swiss: @actors_group.swiss } }
    end

    assert_redirected_to actors_group_url(ActorsGroup.last)
  end

  test "should show actors_group" do
    get actors_group_url(@actors_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_actors_group_url(@actors_group)
    assert_response :success
  end

  test "should update actors_group" do
    patch actors_group_url(@actors_group), params: { actors_group: { administration: @actors_group.administration, category: @actors_group.category, executive: @actors_group.executive, france: @actors_group.france, legislative: @actors_group.legislative, mission: @actors_group.mission, name: @actors_group.name, nuts: @actors_group.nuts, swiss: @actors_group.swiss } }
    assert_redirected_to actors_group_url(@actors_group)
  end

  test "should destroy actors_group" do
    assert_difference('ActorsGroup.count', -1) do
      delete actors_group_url(@actors_group)
    end

    assert_redirected_to actors_groups_url
  end
end
