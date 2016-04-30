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

ActiveRecord::Schema.define(version: 20160430203927) do

  create_table "articles", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "excerpt"
  end

  add_index "articles", ["slug"], name: "index_articles_on_slug", unique: true
  add_index "articles", ["user_id"], name: "index_articles_on_user_id"

  create_table "channels", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "slug"
  end

  add_index "channels", ["slug"], name: "index_channels_on_slug", unique: true

  create_table "channels_locks", id: false, force: :cascade do |t|
    t.integer "channel_id", null: false
    t.integer "lock_id",    null: false
  end

  create_table "channels_tiers", id: false, force: :cascade do |t|
    t.integer "channel_id", null: false
    t.integer "tier_id",    null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "locks", force: :cascade do |t|
    t.integer  "tier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.string   "summary"
  end

  add_index "locks", ["tier_id"], name: "index_locks_on_tier_id"

  create_table "locks_regions", id: false, force: :cascade do |t|
    t.integer "lock_id",   null: false
    t.integer "region_id", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "regions", ["slug"], name: "index_regions_on_slug", unique: true

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
    t.string   "slug"
  end

  add_index "services", ["slug"], name: "index_services_on_slug", unique: true

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
