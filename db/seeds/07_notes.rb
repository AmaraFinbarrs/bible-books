if Note.count.zero?
  # find all users that are members
  portal = Portal.find_by(name: member)
  members_count = User.where(portal_id: portal.id).count

  # Create notes for randomly selected verses and members
  Config::VERSE_NOTE_COUNT.times do
    Note.create!(title: rand(Faker::Religion::Bible.character, Faker::Religion::Bible.character),
                 content: Faker::Religion::Bible.quote,
                 verse_id: rand(1..Verse.count),
                 user_id: rand(1..members_count))
  end

  # Create notes for randomly selected chapters and members
  Config::CHAPTER_NOTE_COUNT.times do
    Note.create!(title: rand(Faker::Religion::Bible.character, Faker::Religion::Bible.character),
                 content: Faker::Religion::Bible.quote,
                 verse_id: rand(1..Chapter.count),
                 user_id: rand(1..members_count))
  end

  # Create notes for randomly selected books and members
  Config::BOOK_NOTE_COUNT.times do
    Note.create!(title: rand(Faker::Religion::Bible.character, Faker::Religion::Bible.character),
                 content: Faker::Religion::Bible.quote,
                 verse_id: rand(1..Book.count),
                 user_id: rand(1..members_count))
  end

  # Admins don't need notes for now, they should focus on ensuring the app content is accurate and up to date
end
