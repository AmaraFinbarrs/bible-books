class CreateNote < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.references :books, null: false, foreign_key: true
      t.references :verses, null: false, foreign_key: true

      t.timestamps
    end
  end
end
