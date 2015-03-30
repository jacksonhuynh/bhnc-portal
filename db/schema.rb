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

ActiveRecord::Schema.define(version: 20150330174649) do

  create_table "space_rental_requests", force: :cascade do |t|
    t.string   "location"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "approved",   default: false, null: false
    t.integer  "user_id"
  end

  add_index "space_rental_requests", ["user_id"], name: "index_space_rental_requests_on_user_id"
  
  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "date"
    t.string   "description"
    t.string   "full_description"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "",    null: false
    t.string   "encrypted_password",               default: "",    null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                            default: false, null: false
    t.boolean  "volunteer",                        default: false, null: false
    t.string   "street_address"
    t.string   "city"
    t.integer  "zip_code"
    t.integer  "phone_number",           limit: 8
    t.string   "company"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
