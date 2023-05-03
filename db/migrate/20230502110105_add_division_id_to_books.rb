class AddDivisionIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :division_id, :integer
  end
end
