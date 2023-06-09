# app/models/book.rb
class Book < ApplicationRecord
  belongs_to :division

  has_many :chapters
  has_many :verses

  self.per_page = 20
end
