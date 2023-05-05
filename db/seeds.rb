require 'faker'

puts 'Running Seeds'
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

puts("Division: #{Division.count}")
puts("Books: #{Book.count}")
puts("Chapters: #{Chapter.count}")
puts("Verses: #{Verse.count}")
