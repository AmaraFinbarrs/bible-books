class Note < ApplicationRecord
  belongs_to :verse
  belongs_to :chapter
  belongs_to :book
  belongs_to :user
end
