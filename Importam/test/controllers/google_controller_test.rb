require 'test_helper'

class GoogleControllerTest < ActionDispatch::IntegrationTest
  test "should get import" do
    get google_import_url
    assert_response :success
  end

  test "should get help" do
    get google_help_url
    assert_response :success
  end

end
