class Chapter < ApplicationRecord
  belongs_to :book

  has_many :verses
end
