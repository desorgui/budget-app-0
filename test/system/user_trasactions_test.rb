require "application_system_test_case"

class UserTrasactionsTest < ApplicationSystemTestCase
  setup do
    @user_trasaction = user_trasactions(:one)
  end

  test "visiting the index" do
    visit user_trasactions_url
    assert_selector "h1", text: "User trasactions"
  end

  test "should create user trasaction" do
    visit user_trasactions_url
    click_on "New user trasaction"

    fill_in "Category", with: @user_trasaction.category_id
    fill_in "Description", with: @user_trasaction.description
    fill_in "Name", with: @user_trasaction.name
    fill_in "Payment", with: @user_trasaction.payment
    fill_in "Photo", with: @user_trasaction.photo
    click_on "Create User trasaction"

    assert_text "User trasaction was successfully created"
    click_on "Back"
  end

  test "should update User trasaction" do
    visit user_trasaction_url(@user_trasaction)
    click_on "Edit this user trasaction", match: :first

    fill_in "Category", with: @user_trasaction.category_id
    fill_in "Description", with: @user_trasaction.description
    fill_in "Name", with: @user_trasaction.name
    fill_in "Payment", with: @user_trasaction.payment
    fill_in "Photo", with: @user_trasaction.photo
    click_on "Update User trasaction"

    assert_text "User trasaction was successfully updated"
    click_on "Back"
  end

  test "should destroy User trasaction" do
    visit user_trasaction_url(@user_trasaction)
    click_on "Destroy this user trasaction", match: :first

    assert_text "User trasaction was successfully destroyed"
  end
end
