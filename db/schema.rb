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

ActiveRecord::Schema[7.0].define(version: 2022_11_22_160817) do
  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "price"
    t.string "availability"
    t.integer "scrape_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scrape_id"], name: "index_books_on_scrape_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "title"
    t.string "bgColor"
    t.string "fontColor"
    t.string "fontStyle"
    t.string "borderStyle"
    t.integer "borderWidth"
    t.string "borderColor"
    t.string "aLink"
    t.string "aVisited"
    t.string "aHover"
    t.string "aActive"
    t.boolean "titleUnderline"
    t.boolean "titleItalicize"
    t.string "titlePosition"
    t.boolean "deafultLinks"
    t.boolean "bgImageBool"
    t.string "bgImage"
    t.boolean "bgImageTile"
    t.integer "borderRounded"
    t.boolean "newspaper"
    t.string "textStyle"
    t.integer "textShadow"
    t.integer "shadowBlur"
    t.string "shadowColor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.integer "htmlID"
    t.integer "cssID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.integer "q1"
    t.integer "q2"
    t.integer "q3"
    t.integer "q4"
    t.text "q5"
    t.text "q6"
    t.text "q7"
    t.text "q8"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrapes", force: :cascade do |t|
    t.string "title"
    t.string "targetURL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "tag"
    t.text "body"
    t.boolean "isLink"
    t.string "hyperlink"
    t.integer "word_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["word_id"], name: "index_sections_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "books", "scrapes"
  add_foreign_key "sections", "words"
end
