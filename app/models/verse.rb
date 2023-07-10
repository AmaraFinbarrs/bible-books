class Verse < ApplicationRecord
  has_many :notes

  belongs_to :chapter
  belongs_to :book

  self.per_page = 20

  def self.populate_from_api(translation)
    Book.includes(:chapters).find_each do |book|
      book.chapters.find_each do |chapter|
        response = HTTParty.get("https://bolls.life/get-text/#{translation}/#{book.id}/#{chapter.chapter_no}/")

        if response.success?
          data = JSON.parse(response.body)

          Verse.transaction do
            data.each do |item|
              Verse.create!(
                book_id: book.id,
                chapter_id: chapter.id,
                verse_no: item['verse'],
                content: item['text']
              )
            end
          end
        else
          Rails.logger.error "Error: #{response.code}"
        end
      end
    end
  end
end
