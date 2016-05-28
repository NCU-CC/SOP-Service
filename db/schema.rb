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

ActiveRecord::Schema.define(version: 20160220185553) do

  create_table "flowlogs", force: :cascade do |t|
    t.string   "action",     limit: 255
    t.string   "user",       limit: 255
    t.string   "client_id",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "flow_id",    limit: 4
  end

  create_table "flows", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.boolean  "flag"
  end

  create_table "steplogs", force: :cascade do |t|
    t.string   "action",     limit: 255
    t.string   "user",       limit: 255
    t.string   "client_id",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "step_id",    limit: 4
  end

  create_table "steps", force: :cascade do |t|
    t.string   "action",     limit: 255
    t.string   "items",      limit: 255
    t.string   "prev",       limit: 255
    t.string   "next",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "flow_id",    limit: 4
    t.integer  "PersonId",   limit: 4
    t.string   "UnitId",     limit: 255
    t.integer  "PlaceId",    limit: 4
    t.boolean  "flag"
  end

  add_index "steps", ["flow_id"], name: "index_steps_on_flow_id", using: :btree

  add_foreign_key "steps", "flows"
end
