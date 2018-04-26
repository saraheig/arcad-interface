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

ActiveRecord::Schema.define(version: 2018_04_26_145317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string "name", limit: 250
    t.string "abbreviation", limit: 20
    t.string "country", limit: 20
    t.string "phone", limit: 20
    t.string "link"
    t.bigint "actors_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actors_group_id"], name: "index_actors_on_actors_group_id"
    t.index ["name"], name: "index_actors_on_name", unique: true
  end

  create_table "actors_groups", force: :cascade do |t|
    t.string "name", limit: 50
    t.string "mission", limit: 500
    t.boolean "category"
    t.boolean "france"
    t.boolean "swiss"
    t.integer "nuts"
    t.boolean "administration"
    t.boolean "executive"
    t.boolean "legislative"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_actors_groups_on_name", unique: true
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name", limit: 250
    t.string "abbreviation", limit: 10
    t.date "start_date"
    t.date "last_rev_date"
    t.string "description", limit: 500
    t.string "planning"
    t.string "transboundary"
    t.boolean "appeal_proc"
    t.string "descr_appeal_proc"
    t.bigint "instruments_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instruments_group_id"], name: "index_instruments_on_instruments_group_id"
    t.index ["name"], name: "index_instruments_on_name", unique: true
  end

  create_table "instruments_groups", force: :cascade do |t|
    t.string "name_ch", limit: 50
    t.string "name_fr", limit: 50
    t.string "abbrev_ch", limit: 10
    t.string "abbrev_fr", limit: 10
    t.string "description", limit: 500
    t.string "country", limit: 20
    t.boolean "law"
    t.boolean "plan"
    t.boolean "appeal_proc"
    t.string "descr_appeal_proc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_ch", "name_fr"], name: "index_instruments_groups_on_name_ch_and_name_fr", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "pseudo"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pseudo"], name: "index_users_on_pseudo", unique: true
  end

  add_foreign_key "actors", "actors_groups"
  add_foreign_key "instruments", "instruments_groups"
end
