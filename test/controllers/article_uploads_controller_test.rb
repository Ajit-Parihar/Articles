require "test_helper"

class ArticleUploadsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get article_uploads_index_url
    assert_response :success
  end

  test "should get edit" do
    get article_uploads_edit_url
    assert_response :success
  end

  test "should get new" do
    get article_uploads_new_url
    assert_response :success
  end

  test "should get show" do
    get article_uploads_show_url
    assert_response :success
  end
end
