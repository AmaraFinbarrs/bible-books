# if Chapter.count.zero?
#   print "#{pretty_print_name('Chapters')}\tStart: #{pretty_print_value(Time.now - @start_time)}"

#   Book.all.each do |book|
#     (1..book.no_of_chapter).each do |chapter|
#       Chapter.create!(chapter_no: chapter,
#                       book_id: book.id)
#     end
#   end

#   puts "\tDuration: #{pretty_print_value(Time.now - @start_time)}   Elapsed: #{pretty_print_value(Time.now - @start_time)}"
#   @last_time = Time.now
# end
