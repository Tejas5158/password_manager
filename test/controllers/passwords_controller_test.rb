require "test_helper"

class PasswordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get passwords_index_url
    assert_response :success
  end

  test "should get new" do
    get passwords_new_url
    assert_response :success
  end
end
