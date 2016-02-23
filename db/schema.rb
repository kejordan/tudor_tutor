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

ActiveRecord::Schema.define(version: 20160223181952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.integer  "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "post"
    t.string   "title"
  end

  add_index "posts", ["program_id"], name: "index_posts_on_program_id", using: :btree

  create_table "programs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "post_id"
  end

  add_index "programs", ["post_id"], name: "index_programs_on_post_id", using: :btree

  create_table "signups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_programs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_programs", ["program_id"], name: "index_user_programs_on_program_id", using: :btree
  add_index "user_programs", ["user_id"], name: "index_user_programs_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "password_digest"
    t.string   "authentication_token"
  end

  add_foreign_key "posts", "programs"
  add_foreign_key "programs", "posts"
  add_foreign_key "user_programs", "programs"
  add_foreign_key "user_programs", "users"
end
