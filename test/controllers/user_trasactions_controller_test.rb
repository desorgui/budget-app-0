require "test_helper"

class UserTrasactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_trasaction = user_trasactions(:one)
  end

  test "should get index" do
    get user_trasactions_url
    assert_response :success
  end

  test "should get new" do
    get new_user_trasaction_url
    assert_response :success
  end

  test "should create user_trasaction" do
    assert_difference("UserTrasaction.count") do
      post user_trasactions_url, params: { user_trasaction: { category_id: @user_trasaction.category_id, description: @user_trasaction.description, name: @user_trasaction.name, payment: @user_trasaction.payment, photo: @user_trasaction.photo } }
    end

    assert_redirected_to user_trasaction_url(UserTrasaction.last)
  end

  test "should show user_trasaction" do
    get user_trasaction_url(@user_trasaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_trasaction_url(@user_trasaction)
    assert_response :success
  end

  test "should update user_trasaction" do
    patch user_trasaction_url(@user_trasaction), params: { user_trasaction: { category_id: @user_trasaction.category_id, description: @user_trasaction.description, name: @user_trasaction.name, payment: @user_trasaction.payment, photo: @user_trasaction.photo } }
    assert_redirected_to user_trasaction_url(@user_trasaction)
  end

  test "should destroy user_trasaction" do
    assert_difference("UserTrasaction.count", -1) do
      delete user_trasaction_url(@user_trasaction)
    end

    assert_redirected_to user_trasactions_url
  end
end
