# app/models/book.rb
class Book < ApplicationRecord
  before_create :set_default_value

  has_many :chapters, dependent: :destroy
  has_many :verses
  has_many :notes

  belongs_to :division

  validates_numericality_of :no_of_chapter, greater_than_or_equal_to: 0

  self.per_page = 20

  def set_default_value
    self.division_id ||= 1
  end

  def self.populate_from_api
    return if Book.exists?

    response = HTTParty.get('https://bolls.life/get-books/NIV/')
    if response.success?
      data = JSON.parse(response.body)

      Book.transaction do
        data.each do |item|
          Book.create!(
            id: item['bookid'].to_i,
            title: item['name'],
            no_of_chapter: item['chapters'],
            description: 'No description at the moment',
            division_id: 1
          )
        end
      end
    else
      Rails.logger.error "Error: #{response.code}"
    end
  end
end
