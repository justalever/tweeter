require "test_helper"

class TweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tweets_index_url
    assert_response :success
  end

  test "should get create" do
    get tweets_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tweets_destroy_url
    assert_response :success
  end
end
