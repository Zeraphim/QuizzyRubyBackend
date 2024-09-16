require "test_helper"

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get api_hello_url
    assert_response :success
  end

  test "should get ask" do
    get api_ask_url
    assert_response :success
  end
end
