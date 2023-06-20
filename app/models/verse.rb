class Verse < ApplicationRecord
  has_many :notes

  belongs_to :chapter
  belongs_to :book

  self.per_page = 20
end
