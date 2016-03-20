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

ActiveRecord::Schema.define(version: 20160320225252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deputies", force: :cascade do |t|
    t.string   "ln",          null: false
    t.string   "fn",          null: false
    t.string   "sn"
    t.date     "birthday",    null: false
    t.integer  "fraction_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "deputies", ["fraction_id"], name: "index_deputies_on_fraction_id", using: :btree

  create_table "fraction_votes", force: :cascade do |t|
    t.integer  "fraction_id",                   null: false
    t.integer  "vote_id",                       null: false
    t.integer  "number_of_present", default: 0, null: false
    t.integer  "yes",               default: 0, null: false
    t.integer  "no",                default: 0, null: false
    t.integer  "dont_know",         default: 0, null: false
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "fraction_votes", ["fraction_id", "vote_id"], name: "index_fraction_votes_on_fraction_id_and_vote_id", unique: true, using: :btree
  add_index "fraction_votes", ["fraction_id"], name: "index_fraction_votes_on_fraction_id", using: :btree
  add_index "fraction_votes", ["vote_id"], name: "index_fraction_votes_on_vote_id", using: :btree

  create_table "fractions", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "quantity",   null: false
    t.integer  "deputy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "fractions", ["name"], name: "index_fractions_on_name", unique: true, using: :btree

  create_table "laws", force: :cascade do |t|
    t.text     "name",        null: false
    t.integer  "fraction_id", null: false
    t.integer  "status",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "laws", ["fraction_id"], name: "index_laws_on_fraction_id", using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "law_id",     null: false
    t.date     "vote_date",  null: false
    t.integer  "number",     null: false
    t.integer  "result",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "votes", ["law_id", "vote_date"], name: "index_votes_on_law_id_and_vote_date", unique: true, using: :btree
  add_index "votes", ["law_id"], name: "index_votes_on_law_id", using: :btree

  add_foreign_key "deputies", "fractions"
  add_foreign_key "fraction_votes", "fractions"
  add_foreign_key "fraction_votes", "votes"
  add_foreign_key "fractions", "deputies"
  add_foreign_key "laws", "fractions"
  add_foreign_key "votes", "laws"
end
