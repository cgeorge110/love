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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140209053902) do

  create_table "emails", force: true do |t|
    t.string   "to"
    t.string   "getter_email"
    t.string   "from"
    t.string   "sender_email"
    t.integer  "note_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
=======
ActiveRecord::Schema.define(version: 20140207052155) do
>>>>>>> 5c722712d0c26fd7248b0c96e2834c3a075a1f17

  create_table "messages", force: true do |t|
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "fields"
  end

  create_table "notes", force: true do |t|
    t.string   "content"
    t.integer  "message_id"
    t.string   "ip_address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.integer  "note_id"
    t.string   "to"
    t.string   "from"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
