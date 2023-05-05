require "application_system_test_case"

class VersesTest < ApplicationSystemTestCase
  setup do
    @verse = verses(:one)
  end

  test "visiting the index" do
    visit verses_url
    assert_selector "h1", text: "Verses"
  end

  test "creating a Verse" do
    visit verses_url
    click_on "New Verse"

    fill_in "Book", with: @verse.book_id
    fill_in "Chapter", with: @verse.chapter_id
    fill_in "Content", with: @verse.content
    fill_in "Verse no", with: @verse.verse_no
    click_on "Create Verse"

    assert_text "Verse was successfully created"
    click_on "Back"
  end

  test "updating a Verse" do
    visit verses_url
    click_on "Edit", match: :first

    fill_in "Book", with: @verse.book_id
    fill_in "Chapter", with: @verse.chapter_id
    fill_in "Content", with: @verse.content
    fill_in "Verse no", with: @verse.verse_no
    click_on "Update Verse"

    assert_text "Verse was successfully updated"
    click_on "Back"
  end

  test "destroying a Verse" do
    visit verses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Verse was successfully destroyed"
  end
end
