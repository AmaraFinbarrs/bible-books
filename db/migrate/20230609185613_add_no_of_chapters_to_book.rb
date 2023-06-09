class AddNoOfChaptersToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :no_of_chapter, :int
  end
end
