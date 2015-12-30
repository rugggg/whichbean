# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151230070115) do

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beans", force: :cascade do |t|
    t.string   "name"
    t.string   "location_id"
    t.string   "integer"
    t.string   "terrain_id"
    t.string   "weather_id"
    t.string   "cultivation_id"
    t.string   "varietal_id"
    t.string   "harvest_id"
    t.string   "preparation_id"
    t.string   "drying_id"
    t.string   "roast_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "dryings", force: :cascade do |t|
    t.string   "method"
    t.integer  "flavour_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "flavour_profiles", force: :cascade do |t|
    t.string   "body"
    t.integer  "fruit_notes"
    t.integer  "spice_notes"
    t.integer  "chocolate_notes"
    t.integer  "grain_notes"
    t.integer  "roast_notes"
    t.integer  "floral_notes"
    t.integer  "nut_notes"
    t.integer  "sugar_notes"
    t.integer  "savory_notes"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "harvests", force: :cascade do |t|
    t.integer  "ripeness"
    t.integer  "flavour_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "farm_name"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "terrain_id"
    t.integer  "weather_id"
    t.integer  "flavour_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "preparations", force: :cascade do |t|
    t.string   "type"
    t.integer  "flavour_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "roasts", force: :cascade do |t|
    t.string   "name"
    t.integer  "strength"
    t.integer  "flavour_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "terrains", force: :cascade do |t|
    t.integer  "elevation"
    t.integer  "groundwater"
    t.integer  "exposure"
    t.integer  "flavour_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "varietals", force: :cascade do |t|
    t.string   "name"
    t.integer  "flavour_profile_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
