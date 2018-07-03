require "application_system_test_case"

class LoaisTest < ApplicationSystemTestCase
  setup do
    @loai = loais(:one)
  end

  test "visiting the index" do
    visit loais_url
    assert_selector "h1", text: "Loais"
  end

  test "creating a Loai" do
    visit loais_url
    click_on "New Loai"

    fill_in "Loaihang", with: @loai.loaihang
    click_on "Create Loai"

    assert_text "Loai was successfully created"
    click_on "Back"
  end

  test "updating a Loai" do
    visit loais_url
    click_on "Edit", match: :first

    fill_in "Loaihang", with: @loai.loaihang
    click_on "Update Loai"

    assert_text "Loai was successfully updated"
    click_on "Back"
  end

  test "destroying a Loai" do
    visit loais_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loai was successfully destroyed"
  end
end
