# if Verse.count.zero?
#   print "#{pretty_print_name('Verses')}\tStart: #{pretty_print_value(Time.now - @start_time)}"

#   genesis = { '1': 8, '2': 8, '3': 8, '4': 8, '5': 8, '6': 8, '7': 8, '8': 8 }
#   exodus = { '1': 8, '2': 8, '3': 8, '4': 8, '5': 8, '6': 8, '7': 8, '8': 8 }
#   leviticus = { '1': 8, '2': 8, '3c': 8, '4': 8, '5': 8, '6': 8, '7': 8, '8': 8 }
#   numbers = { '1': 8, '2': 8, '3': 8, '4': 8, '5': 8, '6': 8, '7': 8, '8': 8 }

#   book_name = { Genesis: genesis, Exodus: exodus, Leviticus: leviticus, Numbers: numbers }

#   book_name.each do |book, book_hash|
#     find_book = Book.find_by(title: book.to_s)
#     book_hash.each do |chapter_number, number_of_verses|
#       find_chapter = Chapter.find_by(chapter_no: chapter_number.to_s.to_i, book_id: find_book.id)
#       (1..number_of_verses).each do |number|
#         Verse.create!(verse_no: number,
#                       content: Faker::Lorem.paragraph(sentence_count: 10),
#                       book_id: find_book.id,
#                       chapter_id: find_chapter.id)
#       end
#     end
#   end

#   puts "\tDuration: #{pretty_print_value(Time.now - @start_time)}   Elapsed: #{pretty_print_value(Time.now - @start_time)}"
#   @last_time = Time.now
# end
