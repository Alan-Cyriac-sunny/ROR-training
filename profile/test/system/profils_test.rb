require "application_system_test_case"

class ProfilsTest < ApplicationSystemTestCase
  setup do
    @profil = profils(:one)
  end

  test "visiting the index" do
    visit profils_url
    assert_selector "h1", text: "Profils"
  end

  test "should create profil" do
    visit profils_url
    click_on "New profil"

    click_on "Create Profil"

    assert_text "Profil was successfully created"
    click_on "Back"
  end

  test "should update Profil" do
    visit profil_url(@profil)
    click_on "Edit this profil", match: :first

    click_on "Update Profil"

    assert_text "Profil was successfully updated"
    click_on "Back"
  end

  test "should destroy Profil" do
    visit profil_url(@profil)
    click_on "Destroy this profil", match: :first

    assert_text "Profil was successfully destroyed"
  end
end
