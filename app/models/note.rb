class Note < ApplicationRecord
  belongs_to :verse, optional: true
  belongs_to :chapter, optional: true
  belongs_to :book, optional: true
  belongs_to :user
end
