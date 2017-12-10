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

ActiveRecord::Schema.define(version: 20171210150315) do

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "color"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experimental_schedulings", force: :cascade do |t|
    t.datetime "date_time"
    t.integer "volunteer_id"
    t.integer "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_experimental_schedulings_on_animal_id"
    t.index ["volunteer_id"], name: "index_experimental_schedulings_on_volunteer_id"
  end

  create_table "fixed_schedulings", force: :cascade do |t|
    t.string "day_of_week"
    t.integer "volunteer_id"
    t.integer "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_fixed_schedulings_on_animal_id"
    t.index ["volunteer_id"], name: "index_fixed_schedulings_on_volunteer_id"
  end

  create_table "landing_pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "function"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.boolean "approved", default: false, null: false
    t.text "motivation_text"
    t.index ["email"], name: "index_volunteers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_volunteers_on_reset_password_token", unique: true
  end

  create_table "walkings", force: :cascade do |t|
    t.datetime "date"
    t.integer "volunteer_id"
    t.integer "animal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["animal_id"], name: "index_walkings_on_animal_id"
    t.index ["volunteer_id"], name: "index_walkings_on_volunteer_id"
  end

end
