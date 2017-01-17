require 'test_helper'

class UserInTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_in_team = user_in_teams(:one)
  end

  test "should get index" do
    get user_in_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_user_in_team_url
    assert_response :success
  end

  test "should create user_in_team" do
    assert_difference('UserInTeam.count') do
      post user_in_teams_url, params: { user_in_team: { team_id: @user_in_team.team_id, user_id: @user_in_team.user_id } }
    end

    assert_redirected_to user_in_team_url(UserInTeam.last)
  end

  test "should show user_in_team" do
    get user_in_team_url(@user_in_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_in_team_url(@user_in_team)
    assert_response :success
  end

  test "should update user_in_team" do
    patch user_in_team_url(@user_in_team), params: { user_in_team: { team_id: @user_in_team.team_id, user_id: @user_in_team.user_id } }
    assert_redirected_to user_in_team_url(@user_in_team)
  end

  test "should destroy user_in_team" do
    assert_difference('UserInTeam.count', -1) do
      delete user_in_team_url(@user_in_team)
    end

    assert_redirected_to user_in_teams_url
  end
end
