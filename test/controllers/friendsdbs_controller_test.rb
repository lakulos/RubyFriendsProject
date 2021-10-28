require "test_helper"

class FriendsdbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendsdb = friendsdbs(:one)
  end

  test "should get index" do
    get friendsdbs_url
    assert_response :success
  end

  test "should get new" do
    get new_friendsdb_url
    assert_response :success
  end

  test "should create friendsdb" do
    assert_difference('Friendsdb.count') do
      post friendsdbs_url, params: { friendsdb: { Email: @friendsdb.Email, First_Name: @friendsdb.First_Name, Last_Name: @friendsdb.Last_Name, Phone_Number: @friendsdb.Phone_Number, Twitter: @friendsdb.Twitter } }
    end

    assert_redirected_to friendsdb_url(Friendsdb.last)
  end

  test "should show friendsdb" do
    get friendsdb_url(@friendsdb)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendsdb_url(@friendsdb)
    assert_response :success
  end

  test "should update friendsdb" do
    patch friendsdb_url(@friendsdb), params: { friendsdb: { Email: @friendsdb.Email, First_Name: @friendsdb.First_Name, Last_Name: @friendsdb.Last_Name, Phone_Number: @friendsdb.Phone_Number, Twitter: @friendsdb.Twitter } }
    assert_redirected_to friendsdb_url(@friendsdb)
  end

  test "should destroy friendsdb" do
    assert_difference('Friendsdb.count', -1) do
      delete friendsdb_url(@friendsdb)
    end

    assert_redirected_to friendsdbs_url
  end
end
