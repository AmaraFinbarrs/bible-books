# app/models/book.rb
class Book < ApplicationRecord
  belongs_to :division

  has_many :chapters
  has_many :verses

  validates_numericality_of :no_of_chapter, greater_than_or_equal_to: 0

  self.per_page = 20
end
