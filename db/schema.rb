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

ActiveRecord::Schema[8.1].define(version: 2025_10_26_222338) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "author"
    t.datetime "created_at", null: false
    t.float "price"
    t.bigint "subject_id"
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_books_on_subject_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "age"
    t.datetime "created_at", null: false
    t.string "integer"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "finished_at"
    t.string "task"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "subjects"
end
