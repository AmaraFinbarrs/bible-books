class Verse < ApplicationRecord
  belongs_to :chapter
  belongs_to :book
end
