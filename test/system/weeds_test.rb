require "application_system_test_case"

class WeedsTest < ApplicationSystemTestCase
  setup do
    @weed = weeds(:one)
  end

  test "visiting the index" do
    visit weeds_url
    assert_selector "h1", text: "Weeds"
  end

  test "creating a Weed" do
    visit weeds_url
    click_on "New Weed"

    fill_in "Activites", with: @weed.activites
    fill_in "Cbd percentage", with: @weed.cbd_percentage
    fill_in "Feelings", with: @weed.feelings
    fill_in "Lineage", with: @weed.lineage
    fill_in "Strain", with: @weed.strain
    fill_in "Thc percentage", with: @weed.thc_percentage
    click_on "Create Weed"

    assert_text "Weed was successfully created"
    click_on "Back"
  end

  test "updating a Weed" do
    visit weeds_url
    click_on "Edit", match: :first

    fill_in "Activites", with: @weed.activites
    fill_in "Cbd percentage", with: @weed.cbd_percentage
    fill_in "Feelings", with: @weed.feelings
    fill_in "Lineage", with: @weed.lineage
    fill_in "Strain", with: @weed.strain
    fill_in "Thc percentage", with: @weed.thc_percentage
    click_on "Update Weed"

    assert_text "Weed was successfully updated"
    click_on "Back"
  end

  test "destroying a Weed" do
    visit weeds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weed was successfully destroyed"
  end
end
