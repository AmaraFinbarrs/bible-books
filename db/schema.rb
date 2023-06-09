# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_06_09_185613) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "division_id"
    t.integer "no_of_chapter"
  end

  create_table "chapters", force: :cascade do |t|
    t.integer "chapter_no"
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_chapters_on_book_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "division"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "verses", force: :cascade do |t|
    t.integer "verse_no"
    t.text "content"
    t.integer "chapter_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_verses_on_book_id"
    t.index ["chapter_id"], name: "index_verses_on_chapter_id"
  end

  add_foreign_key "chapters", "books"
  add_foreign_key "verses", "books"
  add_foreign_key "verses", "chapters"
end
