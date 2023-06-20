if Book.count.zero?
  print "#{pretty_print_name('Books')}\tStart: #{pretty_print_value(Time.now - @start_time)}"

  book_name = ['Genesis',
               'Exodus',
               'Leviticus',
               'Numbers',
               'Deuteronomy',
               'Joshua',
               'Judges',
               'Ruth',
               '1 Samuel',
               '2 Samuel',
               '1 Kings',
               '2 Kings',
               '1 Chronicles',
               '2 Chronicles',
               'Ezra',
               'Nehemiah',
               'Esther',
               'Job',
               'Psalms',
               'Proverbs',
               'Ecclesiates',
               'Songs of Solomon']

  book_name.each_with_index do |name, counter|
    counter += 1
    if counter <= 5
      Book.create!(title: name,
                   description: Faker::Lorem.paragraph(sentence_count: 10),
                   division_id: 1,
                   no_of_chapter: 8)
    elsif counter <= 17
      Book.create!(title: name,
                   description: Faker::Lorem.paragraph(sentence_count: 10),
                   division_id: 2,
                   no_of_chapter: 8)
    else
      Book.create!(title: name,
                   description: Faker::Lorem.paragraph(sentence_count: 10),
                   division_id: 3,
                   no_of_chapter: 8)
    end
  end

  puts "\tDuration: #{pretty_print_value(Time.now - @start_time)}   Elapsed: #{pretty_print_value(Time.now - @start_time)}"
  @last_time = Time.now
end
