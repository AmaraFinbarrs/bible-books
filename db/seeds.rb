begin
  # search current file  location for config
  require_relative 'config'
rescue LoadError
  puts 'Config file "db/config.rb" not found'
  puts 'Check README.md for details on creating the config file'
  exit
end

require 'faker'

puts 'Running Seeds'
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

puts("Division: #{Division.count}")
puts("Books: #{Book.count}")
puts("Chapters: #{Chapter.count}")
puts("Verses: #{Verse.count}")
