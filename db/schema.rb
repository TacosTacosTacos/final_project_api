# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171127201848) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "make_id"
    t.string "model"
    t.integer "year"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["make_id"], name: "index_cars_on_make_id"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "makes", force: :cascade do |t|
    t.integer "nhtsa_make_id"
    t.string "make_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mileages", force: :cascade do |t|
    t.bigint "car_id"
    t.date "purchase_date"
    t.decimal "gallons_of_gas"
    t.decimal "trip_miles"
    t.decimal "price_of_gas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_mileages_on_car_id"
  end

  create_table "service_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.bigint "car_id"
    t.bigint "service_type_id"
    t.date "service_date"
    t.decimal "current_mileage"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_services_on_car_id"
    t.index ["service_type_id"], name: "index_services_on_service_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "cars", "makes"
  add_foreign_key "cars", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "mileages", "cars"
  add_foreign_key "services", "cars"
  add_foreign_key "services", "service_types"
end
