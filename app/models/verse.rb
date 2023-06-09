class Verse < ApplicationRecord
  belongs_to :chapter
  belongs_to :book

  self.per_page = 20
end
