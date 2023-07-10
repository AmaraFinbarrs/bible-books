class Division < ApplicationRecord
  has_many :books

  self.per_page = 20

  def self.populate_division
    divisions = ['Books of the Law',
                 'Historical Books',
                 'Poetic Books',
                 'Major Prophets',
                 'Minor Prophets',
                 'The Gospels',
                 'The Historical Book',
                 'The Letters',
                 'The Book of Vision']

    divisions.each do |division|
      create!(division: division)
    end
  end
end
