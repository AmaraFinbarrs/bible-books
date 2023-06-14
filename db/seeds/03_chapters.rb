# Chapters are automatically created in when books are created.
# This is because of the code in the controller.
Book.all.each do |book|
  (1..book.no_of_chapter).each do |chapter|
    # puts book.no_of_chapter
    # puts chapter
    # fail
    Chapter.create!(chapter_no: chapter,
                    book_id: book.id)
  end
end

puts '================ Chapters Created!====================='