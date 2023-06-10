class Division < ApplicationRecord
  has_many :books

  self.per_page = 20
end
