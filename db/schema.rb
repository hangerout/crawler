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

ActiveRecord::Schema.define(version: 20130822040104) do

  create_table "access_uberlandia", force: true do |t|
    t.integer  "uid",        limit: 8,                null: false
    t.string   "token",                               null: false
    t.boolean  "accessible",           default: true
    t.datetime "expires_at",                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "active_admin_comments", force: true do |t|
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_admin_notes_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "crawled_uberlandia", force: true do |t|
    t.integer  "eid",          limit: 8,             null: false
    t.text     "name",                               null: false
    t.text     "description"
    t.datetime "start_time",                         null: false
    t.datetime "end_time"
    t.datetime "updated_time"
    t.string   "location"
    t.integer  "v_id",         limit: 8
    t.string   "v_latitude"
    t.string   "v_longitude"
    t.string   "v_city"
    t.string   "v_state"
    t.string   "v_zip"
    t.string   "v_country"
    t.string   "privacy"
    t.string   "picture"
    t.integer  "owner_uid",    limit: 8
    t.string   "owner_name"
    t.integer  "invited",                default: 0
    t.integer  "attending",              default: 0
    t.integer  "maybe",                  default: 0
    t.integer  "declined",               default: 0
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "crawled_uberlandia", ["eid"], name: "index_crawled_uberlandia_on_eid", using: :btree
  add_index "crawled_uberlandia", ["location"], name: "index_crawled_uberlandia_on_location", using: :btree
  add_index "crawled_uberlandia", ["privacy"], name: "index_crawled_uberlandia_on_privacy", using: :btree
  add_index "crawled_uberlandia", ["start_time"], name: "index_crawled_uberlandia_on_start_time", using: :btree

  create_table "crawleds", force: true do |t|
    t.integer  "eid",          limit: 8,             null: false
    t.text     "name",                               null: false
    t.text     "description"
    t.datetime "start_time",                         null: false
    t.datetime "end_time"
    t.datetime "updated_time"
    t.string   "location"
    t.integer  "v_id",         limit: 8
    t.string   "v_latitude"
    t.string   "v_longitude"
    t.string   "v_city"
    t.string   "v_state"
    t.string   "v_zip"
    t.string   "v_country"
    t.string   "privacy"
    t.string   "picture"
    t.integer  "owner_uid",    limit: 8
    t.string   "owner_name"
    t.integer  "invited",                default: 0
    t.integer  "attending",              default: 0
    t.integer  "maybe",                  default: 0
    t.integer  "declined",               default: 0
    t.string   "link"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "crawleds", ["eid"], name: "index_crawleds_on_eid", using: :btree
  add_index "crawleds", ["location"], name: "index_crawleds_on_location", using: :btree
  add_index "crawleds", ["privacy"], name: "index_crawleds_on_privacy", using: :btree
  add_index "crawleds", ["start_time"], name: "index_crawleds_on_start_time", using: :btree

  create_table "to_craws", force: true do |t|
    t.string   "token"
    t.datetime "expires_at"
    t.boolean  "is_crawled", default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
