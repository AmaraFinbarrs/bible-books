if Chapter.count.zero?
  book_with_chapter = { 'Genesis' => 8,
                        'Exodus' => 8,
                        'Leviticus' => 8,
                        'Numbers' => 8,
                        'Deuteronomy' => 8,
                        'Joshua' => 8 }

  book_with_chapter.each do |book, number_of_chapters|
    number_of_chapters.times do |chapter_number|
      chapter_number += 1
      find_book = Book.find_by(title: book)
      Chapter.create!(chapter_no: chapter_number,
                      book_id: find_book.id)
    end
  end
end
