require "test_helper"

class PasswordResetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get password_resets_new_url
    assert_response :success
  end

  test "should get edit]" do
    get password_resets_edit]_url
    assert_response :success
  end
end
