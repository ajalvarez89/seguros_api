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

ActiveRecord::Schema.define(version: 2020_02_16_183341) do

  create_table "coverages", force: :cascade do |t|
    t.float "death"
    t.float "medical"
    t.float "inability"
    t.float "transport"
    t.string "currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.datetime "starts_at", null: false
    t.datetime "ends_at", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "vehicle_id"
    t.integer "rate_id"
    t.index ["rate_id"], name: "index_insurances_on_rate_id"
    t.index ["vehicle_id"], name: "index_insurances_on_vehicle_id"
  end

  create_table "rates", force: :cascade do |t|
    t.string "code", null: false
    t.string "category", null: false
    t.string "subcategory", null: false
    t.integer "min_age", default: 0, null: false
    t.integer "max_age", default: 99, null: false
    t.float "bonus", null: false
    t.float "total", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "document"
    t.string "document_type"
    t.string "name"
    t.string "lastname"
    t.string "phone"
    t.boolean "admin", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "license", null: false
    t.string "category", null: false
    t.string "subcategory", null: false
    t.integer "age"
    t.string "value_type"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "rate_id"
    t.index ["license"], name: "index_vehicles_on_license", unique: true
    t.index ["rate_id"], name: "index_vehicles_on_rate_id"
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  add_foreign_key "insurances", "rates"
  add_foreign_key "insurances", "vehicles"
  add_foreign_key "vehicles", "rates"
  add_foreign_key "vehicles", "users"
end
