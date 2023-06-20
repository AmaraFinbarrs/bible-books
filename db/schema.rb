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

ActiveRecord::Schema.define(version: 2023_06_20_030610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_chapters_on_book_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "division"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "books_id", null: false
    t.bigint "verses_id", null: false
    t.bigint "chapters_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["books_id"], name: "index_notes_on_books_id"
    t.index ["chapters_id"], name: "index_notes_on_chapters_id"
    t.index ["verses_id"], name: "index_notes_on_verses_id"
  end

  create_table "portals", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.datetime "date_of_birth"
    t.bigint "mobile_number"
    t.string "password"
    t.bigint "portal_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["portal_id"], name: "index_users_on_portal_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "verses", force: :cascade do |t|
    t.integer "verse_no"
    t.text "content"
    t.bigint "chapter_id", null: false
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_verses_on_book_id"
    t.index ["chapter_id"], name: "index_verses_on_chapter_id"
  end

  add_foreign_key "chapters", "books"
  add_foreign_key "notes", "books", column: "books_id"
  add_foreign_key "notes", "chapters", column: "chapters_id"
  add_foreign_key "notes", "verses", column: "verses_id"
  add_foreign_key "users", "portals"
  add_foreign_key "verses", "books"
  add_foreign_key "verses", "chapters"
end
