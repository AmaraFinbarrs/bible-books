if Verse.count.zero?
  genesis = { '1': 8, '2': 8, '3': 8, '4': 8 }
  exodus = { '1': 8, '2': 8, '3': 8, '4': 8 }
  leviticus = { '1': 8, '2': 8, '3': 8, '4': 8 }
  numbers = { '1': 8, '2': 8, '3': 8, '4': 8 }

  book_name = { Genesis: genesis, Exodus: exodus, Leviticus: leviticus, Numbers: numbers }

  book_name.each do |book, book_hash|
    find_book = Book.find_by(title: book.to_s)
    book_hash.each do |chapter_number, number_of_verses|
      find_chapter = Chapter.find_by(chapter_no: chapter_number.to_s.to_i)
      number_of_verses.times do |number|
        Verse.create!(verse_no: number,
                      content: "Verse #{chapter_number}: #{Faker::Lorem.paragraph(sentence_count: 10)}",
                      chapter_id: find_chapter.id,
                      book_id: find_book.id)
      end
    end
  end
end
