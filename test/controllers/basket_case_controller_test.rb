require "test_helper"

class BasketCaseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get basket_case_index_url
    assert_response :success
  end
end
