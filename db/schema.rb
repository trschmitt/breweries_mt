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

ActiveRecord::Schema.define(version: 20171005191428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breweries", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "password_digest"
    t.text "description"
    t.string "website"
    t.string "established"
    t.string "address_street"
    t.string "address_city"
    t.string "address_state"
    t.string "operating_hours"
    t.string "location_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string "sales"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "brewery_id"
    t.index ["brewery_id"], name: "index_events_on_brewery_id"
  end

  add_foreign_key "events", "breweries", on_delete: :cascade
end
