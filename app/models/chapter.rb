class Chapter < ApplicationRecord
  has_many :verses
  has_many :notes

  belongs_to :book
end
