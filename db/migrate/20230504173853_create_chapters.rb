class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.integer :chapter_no
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
