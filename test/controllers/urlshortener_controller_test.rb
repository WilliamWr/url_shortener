require 'test_helper'

class UrlshortenerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get urlshortener_index_url
    assert_response :success
  end

  test "should get show" do
    get urlshortener_show_url
    assert_response :success
  end

  test "should get create" do
    get urlshortener_create_url
    assert_response :success
  end

end
