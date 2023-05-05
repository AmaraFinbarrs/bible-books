require "test_helper"

class VersesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @verse = verses(:one)
  end

  test "should get index" do
    get verses_url
    assert_response :success
  end

  test "should get new" do
    get new_verse_url
    assert_response :success
  end

  test "should create verse" do
    assert_difference('Verse.count') do
      post verses_url, params: { verse: { book_id: @verse.book_id, chapter_id: @verse.chapter_id, content: @verse.content, verse_no: @verse.verse_no } }
    end

    assert_redirected_to verse_url(Verse.last)
  end

  test "should show verse" do
    get verse_url(@verse)
    assert_response :success
  end

  test "should get edit" do
    get edit_verse_url(@verse)
    assert_response :success
  end

  test "should update verse" do
    patch verse_url(@verse), params: { verse: { book_id: @verse.book_id, chapter_id: @verse.chapter_id, content: @verse.content, verse_no: @verse.verse_no } }
    assert_redirected_to verse_url(@verse)
  end

  test "should destroy verse" do
    assert_difference('Verse.count', -1) do
      delete verse_url(@verse)
    end

    assert_redirected_to verses_url
  end
end
