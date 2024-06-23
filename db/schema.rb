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

ActiveRecord::Schema[7.1].define(version: 2024_06_23_172156) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "flat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_companies_on_flat_id"
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "flats", force: :cascade do |t|
    t.string "city"
    t.text "description"
    t.string "status"
    t.decimal "rent"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.boolean "viewing"
    t.boolean "maintenance"
    t.boolean "payment"
    t.boolean "offer"
    t.bigint "renter_id", null: false
    t.bigint "flat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flat_id"], name: "index_matches_on_flat_id"
    t.index ["renter_id"], name: "index_matches_on_renter_id"
  end

  create_table "renters", force: :cascade do |t|
    t.string "name"
    t.string "contact_info"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_renters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "companies", "flats"
  add_foreign_key "companies", "users"
  add_foreign_key "matches", "flats"
  add_foreign_key "matches", "renters"
  add_foreign_key "renters", "users"
end
