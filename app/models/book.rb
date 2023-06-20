# app/models/book.rb
class Book < ApplicationRecord
  has_many :chapters
  has_many :verses
  has_many :notes

  belongs_to :division

  validates_numericality_of :no_of_chapter, greater_than_or_equal_to: 0

  self.per_page = 20
end
