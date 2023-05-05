class RenameContentToDescriptionInBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :content, :description
  end
end
