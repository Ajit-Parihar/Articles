require "test_helper"

class AuthenticationControllerTest < ActionDispatch::IntegrationTest
  test "should get Login" do
    get authentication_Login_url
    assert_response :success
  end

  test "should get signup" do
    get authentication_signup_url
    assert_response :success
  end
end
