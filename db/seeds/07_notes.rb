# if Note.count.zero?
#   print "#{pretty_print_name('Notes')}\tStart: #{pretty_print_value(Time.now - @start_time)}"

#   # find all users that are members
#   portal = Portal.find_by(name: 'member')
#   members_count = User.where(portal_id: portal.id).all.count

#   # Create notes for randomly selected verses and members
#   puts "\n BOOK COUNT: #{Verse.count}"
#   fail
#   Config::VERSE_NOTE_COUNT.times do
#     Note.create!(title: [Faker::Religion::Bible.character, Faker::Religion::Bible.character].sample,
#                  content: Faker::Religion::Bible.quote,
#                  verses_id: rand(1..Verse.count),
#                  user_id: rand(1..members_count))
#   end

#   # Create notes for randomly selected chapters and members
#   Config::CHAPTER_NOTE_COUNT.times do
#     Note.create!(title: [Faker::Religion::Bible.character, Faker::Religion::Bible.character].sample,
#                  content: Faker::Religion::Bible.quote,
#                  chapters_id: rand(1..Chapter.count),
#                  user_id: rand(1..members_count))
#   end

#   # Create notes for randomly selected books and members
#   Config::BOOK_NOTE_COUNT.times do
#     Note.create!(title: [Faker::Religion::Bible.character, Faker::Religion::Bible.character].sample,
#                  content: Faker::Religion::Bible.quote,
#                  books_id: rand(1..Book.count),
#                  user_id: rand(1..members_count))
#   end

#   # Admins don't need notes for now, they should focus on ensuring the app content is accurate and up to date
#   puts "\tDuration: #{pretty_print_value(Time.now - @start_time)}   Elapsed: #{pretty_print_value(Time.now - @start_time)}"
#   @last_time = Time.now
# end
