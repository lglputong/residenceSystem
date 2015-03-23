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

ActiveRecord::Schema.define(version: 20150322170226) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "equipment", force: :cascade do |t|
    t.string   "name_string",        limit: 255
    t.string   "description_string", limit: 255
    t.integer  "quantity",           limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "equipment_reservations", force: :cascade do |t|
    t.string   "users",             limit: 255
    t.date     "reservation_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "status",            limit: 255
    t.string   "purpose",           limit: 255
    t.datetime "timestamp"
    t.text     "comment",           limit: 65535
    t.integer  "id_number",         limit: 4
    t.string   "applicant_name",    limit: 255
    t.string   "requesting_entity", limit: 255
    t.string   "mobile_number",     limit: 255
    t.string   "email",             limit: 255
    t.string   "yr_course",         limit: 255
    t.string   "department",        limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "readmissions", force: :cascade do |t|
    t.date     "check_in"
    t.datetime "timestamp"
    t.string   "school_year", limit: 255
    t.string   "semester",    limit: 255
    t.binary   "status",      limit: 65535
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "school_year",    limit: 255
    t.string   "last_name",      limit: 255
    t.string   "first_name",     limit: 255
    t.string   "middle_initial", limit: 255
    t.string   "mobile_number",  limit: 11
<<<<<<< HEAD
    t.string   "email",          limit: 255
=======
    t.string   "address",        limit: 255
>>>>>>> bcb044a5efe16fa83bae14742e94969845d32531
    t.integer  "id_number",      limit: 4
    t.integer  "year_level",     limit: 1
    t.string   "course",         limit: 255
    t.string   "dorm_scholar",   limit: 255
    t.string   "building",       limit: 255
    t.integer  "room_number",    limit: 4
    t.date     "check_in"
    t.date     "submission"
    t.string   "status",         limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "residents", id: false, force: :cascade do |t|
    t.integer "id_number",      limit: 8
    t.string  "first_name",     limit: 255
    t.string  "last_name",      limit: 255
    t.string  "middle_initial", limit: 1
    t.boolean "year",           limit: 1
    t.string  "course",         limit: 255
    t.string  "email",          limit: 255
    t.string  "mobile",         limit: 11
    t.binary  "dorm_scholar",   limit: 65535
  end

  create_table "rooms", id: false, force: :cascade do |t|
    t.string   "room_number", limit: 255
    t.string   "building",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "venue_reservations", force: :cascade do |t|
    t.string   "users",             limit: 255
    t.date     "reservation_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "status",            limit: 255
    t.string   "purpose",           limit: 255
    t.datetime "timestamp"
    t.text     "comment",           limit: 65535
    t.integer  "id_number",         limit: 4
    t.string   "applicant_name",    limit: 255
    t.string   "requesting_entity", limit: 255
    t.string   "mobile_number",     limit: 255
    t.string   "email",             limit: 255
    t.string   "yr_course",         limit: 255
    t.string   "department",        limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
<<<<<<< HEAD
    t.float    "length",      limit: 24
    t.float    "width",       limit: 24
    t.float    "area",        limit: 24
=======
    t.string   "dimensions",  limit: 255
>>>>>>> bcb044a5efe16fa83bae14742e94969845d32531
    t.integer  "capacity",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
