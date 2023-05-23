require "test_helper"

class EstrenosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estrenos_index_url
    assert_response :success
  end

  test "should get new" do
    get estrenos_new_url
    assert_response :success
  end
end
