class Chapter < ApplicationRecord
  has_many :verses
  has_many :notes

  belongs_to :book

  def self.populate_from_api
    Book.find_each do |book|
      (1..book.no_of_chapter).each do |chapter_number|
        create(book_id: book.id, chapter_no: chapter_number)
      end
    end
  end
end
