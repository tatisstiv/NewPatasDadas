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

ActiveRecord::Schema.define(version: 20171122224733) do

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
