# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_13_005100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "body_garment_attributes", force: :cascade do |t|
    t.bigint "body_id", null: false
    t.bigint "garment_attribute_id", null: false
    t.index ["body_id"], name: "index_body_garment_attributes_on_body_id"
    t.index ["garment_attribute_id"], name: "index_body_garment_attributes_on_garment_attribute_id"
  end

  create_table "fashion_garment_attributes", force: :cascade do |t|
    t.bigint "fashion_style_garment_id", null: false
    t.bigint "garment_attribute_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fashion_style_garment_id"], name: "index_fashion_garment_attributes_on_fashion_style_garment_id"
    t.index ["garment_attribute_id"], name: "index_fashion_garment_attributes_on_garment_attribute_id"
  end

  create_table "fashion_style_garments", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.bigint "fashion_style_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fashion_style_id"], name: "index_fashion_style_garments_on_fashion_style_id"
  end

  create_table "fashion_styles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "garment_attributes", force: :cascade do |t|
    t.string "name"
    t.integer "kind"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "body_garment_attributes", "bodies"
  add_foreign_key "body_garment_attributes", "garment_attributes"
  add_foreign_key "fashion_garment_attributes", "fashion_style_garments"
  add_foreign_key "fashion_garment_attributes", "garment_attributes"
  add_foreign_key "fashion_style_garments", "fashion_styles"
end
