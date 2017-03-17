require 'test_helper'

class MoneyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get money_index_url
    assert_response :success
  end

end
