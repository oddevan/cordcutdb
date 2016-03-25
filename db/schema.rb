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

ActiveRecord::Schema.define(version: 20160325133352) do

  create_table "channels", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "channels_locks", id: false, force: :cascade do |t|
    t.integer "channel_id", null: false
    t.integer "lock_id",    null: false
  end

  create_table "channels_tiers", id: false, force: :cascade do |t|
    t.integer "channel_id", null: false
    t.integer "tier_id",    null: false
  end

  create_table "locks", force: :cascade do |t|
    t.integer  "tier_id"
    t.integer  "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locks", ["region_id"], name: "index_locks_on_region_id"
  add_index "locks", ["tier_id"], name: "index_locks_on_tier_id"

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions_services", id: false, force: :cascade do |t|
    t.integer "region_id",  null: false
    t.integer "service_id", null: false
  end

  create_table "regions_tiers", id: false, force: :cascade do |t|
    t.integer "region_id", null: false
    t.integer "tier_id",   null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "website"
    t.text     "review"
    t.boolean  "on_demand"
    t.boolean  "live"
  end

  create_table "tiers", force: :cascade do |t|
    t.integer  "service_id"
    t.string   "name"
    t.text     "description"
    t.decimal  "annual_cost",  precision: 7, scale: 2
    t.integer  "prereq_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.decimal  "monthly_cost", precision: 7, scale: 2
  end

  add_index "tiers", ["prereq_id"], name: "index_tiers_on_prereq_id"
  add_index "tiers", ["service_id"], name: "index_tiers_on_service_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "uid"
    t.string   "provider"
    t.boolean  "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
