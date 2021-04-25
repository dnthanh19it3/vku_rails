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

ActiveRecord::Schema.define(version: 2021_04_23_155615) do

  create_table "categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "parent_id"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cms", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "cms_category_id"
    t.string "MetaTitle"
    t.string "MetaDescription"
    t.string "MetaKeyword"
    t.string "Slug_vi"
    t.string "Slug_en"
    t.string "Title_vi"
    t.string "Title_en"
    t.string "Avatar"
    t.text "SimpleContent_vi"
    t.text "SimpleContent_en"
    t.text "Content_vi", size: :medium
    t.text "Content_en", size: :medium
    t.integer "Status"
    t.integer "Pin"
    t.integer "Banner"
    t.string "Place"
    t.integer "ViewCount"
    t.integer "Author"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.string "Tags"
    t.index ["cms_category_id"], name: "index_cms_on_cms_category_id"
  end

  create_table "cms_categories", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "ParentID"
    t.string "Name_vi"
    t.string "Name_en"
    t.string "Slug_vi"
    t.string "Slug_en"
    t.integer "Index"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ho_sos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ten"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
