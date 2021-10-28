require "application_system_test_case"

class FriendsdbsTest < ApplicationSystemTestCase
  setup do
    @friendsdb = friendsdbs(:one)
  end

  test "visiting the index" do
    visit friendsdbs_url
    assert_selector "h1", text: "Friendsdbs"
  end

  test "creating a Friendsdb" do
    visit friendsdbs_url
    click_on "New Friendsdb"

    fill_in "Email", with: @friendsdb.Email
    fill_in "First name", with: @friendsdb.First_Name
    fill_in "Last name", with: @friendsdb.Last_Name
    fill_in "Phone number", with: @friendsdb.Phone_Number
    fill_in "Twitter", with: @friendsdb.Twitter
    click_on "Create Friendsdb"

    assert_text "Friendsdb was successfully created"
    click_on "Back"
  end

  test "updating a Friendsdb" do
    visit friendsdbs_url
    click_on "Edit", match: :first

    fill_in "Email", with: @friendsdb.Email
    fill_in "First name", with: @friendsdb.First_Name
    fill_in "Last name", with: @friendsdb.Last_Name
    fill_in "Phone number", with: @friendsdb.Phone_Number
    fill_in "Twitter", with: @friendsdb.Twitter
    click_on "Update Friendsdb"

    assert_text "Friendsdb was successfully updated"
    click_on "Back"
  end

  test "destroying a Friendsdb" do
    visit friendsdbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Friendsdb was successfully destroyed"
  end
end
