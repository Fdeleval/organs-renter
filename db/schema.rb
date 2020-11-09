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

ActiveRecord::Schema.define(version: 2020_11_09_135018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "organ_id", null: false
    t.bigint "user_id", null: false
    t.datetime "date_start", null: false
    t.datetime "date_end", null: false
    t.index ["organ_id"], name: "index_bookings_on_organ_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "organs", force: :cascade do |t|
    t.string "type", null: false
    t.text "description", null: false
    t.bigint "user_id", null: false
    t.boolean "available", null: false
    t.integer "price", null: false
    t.index ["user_id"], name: "index_organs_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "bookings_id", null: false
    t.text "content"
    t.integer "rating"
    t.index ["bookings_id"], name: "index_reviews_on_bookings_id"
  end
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "smoker"
    t.boolean "drinker"
    t.boolean "donor"
    t.text "description"
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
