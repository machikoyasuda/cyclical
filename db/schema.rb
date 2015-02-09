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

ActiveRecord::Schema.define(version: 20150208225700) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["email"], name: "index_accounts_on_email", unique: true, using: :btree
  add_index "accounts", ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true, using: :btree

  create_table "connections", force: true do |t|
    t.string   "token"
    t.integer  "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "connections", ["account_id"], name: "index_connections_on_account_id", using: :btree
  add_index "connections", ["token"], name: "index_connections_on_token", using: :btree

  create_table "days", force: true do |t|
    t.string   "date"
    t.string   "updated"
    t.integer  "cycle_day"
    t.decimal  "temperature"
    t.boolean  "questionable_temp"
    t.boolean  "temp_shift"
    t.boolean  "no_fluid"
    t.integer  "fluid_sticky"
    t.integer  "fluid_creamy"
    t.integer  "fluid_eggwhite"
    t.integer  "fluid_watery"
    t.integer  "cervix_height"
    t.integer  "cervix_openness"
    t.integer  "cervix_firmness"
    t.integer  "opk"
    t.boolean  "peak_day"
    t.integer  "sex"
    t.boolean  "first_day"
    t.boolean  "menstruation"
    t.text     "custom"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
