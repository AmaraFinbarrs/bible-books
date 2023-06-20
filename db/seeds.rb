begin
  # search current file  location for config
  require_relative 'config'
rescue LoadError
  puts 'Config file "db/config.rb" not found'
  puts 'Check README.md for details on creating the config file'
  exit
end

require 'faker'

@start_time = Time.now

MAX_NAME_LENGTH = 22
MAX_TIME_LENGTH = 6
DOTTED_LINE_LENGTH = MAX_NAME_LENGTH + (MAX_TIME_LENGTH * 3) + ('Start: '.length + 'Duration: '.length + 'Elapsed: '.length) + 8

def pretty_print_name(name)
  name = name[0..(MAX_NAME_LENGTH - 1)] if name.length > MAX_NAME_LENGTH
  name + (' ' * (MAX_NAME_LENGTH - name.length))
end

def pretty_print_value(value)
  str = value.to_f.to_s
  if str.length < MAX_TIME_LENGTH
    str + ('O' * (MAX_TIME_LENGTH - str.length))
  else
    str[0..(MAX_TIME_LENGTH - 1)]
  end
end

puts ('-' * DOTTED_LINE_LENGTH).to_s
puts 'Running Seeds'
Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

puts ('-' * DOTTED_LINE_LENGTH).to_s
puts 'Counts'
puts("#{pretty_print_name('Divisions')}\t#{Division.count}")
puts("#{pretty_print_name('Books')}\t#{Book.count}")
puts("#{pretty_print_name('Chapters')}\t#{Chapter.count}")
puts("#{pretty_print_name('Verses')}\t#{Verse.count}")
puts("#{pretty_print_name('Portals')}\t#{Portal.count}")
puts("#{pretty_print_name('Users')}\t#{User.count}")
puts("#{pretty_print_name('Notes')}\t#{Note.count}")
