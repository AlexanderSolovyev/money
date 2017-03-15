require 'test_helper'

class TransControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trans_index_url
    assert_response :success
  end

  test "should get new" do
    get trans_new_url
    assert_response :success
  end

  test "should get edit" do
    get trans_edit_url
    assert_response :success
  end

  test "should get update" do
    get trans_update_url
    assert_response :success
  end

  test "should get destroy" do
    get trans_destroy_url
    assert_response :success
  end

end
