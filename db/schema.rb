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

ActiveRecord::Schema.define(version: 20140114081350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "corps", force: true do |t|
    t.integer  "corp_no"
    t.string   "corp_name"
    t.string   "corp_namek"
    t.string   "corp_posi"
    t.string   "corp_rep"
    t.string   "corp_repk"
    t.date     "rep_bth"
    t.string   "corp_add"
    t.string   "corp_tel"
    t.string   "corp_fax"
    t.string   "corp_mail"
    t.integer  "cap"
    t.integer  "cy"
    t.integer  "emp"
    t.date     "acc"
    t.string   "corp2_name"
    t.string   "corp2_namek"
    t.string   "corp2_posi"
    t.string   "corp2_rep"
    t.string   "corp2_repk"
    t.date     "rep2_bth"
    t.string   "corp2_add"
    t.string   "corp2_tel"
    t.string   "corp2_fax"
    t.string   "corp2_mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grps", force: true do |t|
    t.string   "grp_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tois", force: true do |t|
    t.string   "toi_name"
    t.integer  "grp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tois", ["grp_id"], name: "index_tois_on_grp_id", using: :btree

end
