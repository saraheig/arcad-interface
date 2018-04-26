require 'test_helper'

class InstrumentsGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instruments_group = instruments_groups(:one)
  end

  test "should get index" do
    get instruments_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_instruments_group_url
    assert_response :success
  end

  test "should create instruments_group" do
    assert_difference('InstrumentsGroup.count') do
      post instruments_groups_url, params: { instruments_group: { abbrev_ch: @instruments_group.abbrev_ch, abbrev_fr: @instruments_group.abbrev_fr, appeal_proc: @instruments_group.appeal_proc, country: @instruments_group.country, descr_appeal_proc: @instruments_group.descr_appeal_proc, description: @instruments_group.description, law: @instruments_group.law, name_ch: @instruments_group.name_ch, name_fr: @instruments_group.name_fr, plan: @instruments_group.plan } }
    end

    assert_redirected_to instruments_group_url(InstrumentsGroup.last)
  end

  test "should show instruments_group" do
    get instruments_group_url(@instruments_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_instruments_group_url(@instruments_group)
    assert_response :success
  end

  test "should update instruments_group" do
    patch instruments_group_url(@instruments_group), params: { instruments_group: { abbrev_ch: @instruments_group.abbrev_ch, abbrev_fr: @instruments_group.abbrev_fr, appeal_proc: @instruments_group.appeal_proc, country: @instruments_group.country, descr_appeal_proc: @instruments_group.descr_appeal_proc, description: @instruments_group.description, law: @instruments_group.law, name_ch: @instruments_group.name_ch, name_fr: @instruments_group.name_fr, plan: @instruments_group.plan } }
    assert_redirected_to instruments_group_url(@instruments_group)
  end

  test "should destroy instruments_group" do
    assert_difference('InstrumentsGroup.count', -1) do
      delete instruments_group_url(@instruments_group)
    end

    assert_redirected_to instruments_groups_url
  end
end
