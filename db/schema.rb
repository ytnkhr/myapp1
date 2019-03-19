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

ActiveRecord::Schema.define(version: 20190319031913) do

  create_table "comments", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "eva_user_id"
    t.integer  "point"
    t.text     "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "room_id"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_details", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "image_name"
    t.string   "tag_name"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.integer  "user_id"
    t.text     "content"
    t.string   "post_published"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "follower"
    t.integer  "followed"
    t.string   "first_contact"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sports_cats", force: :cascade do |t|
    t.string   "category"
    t.string   "sports_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "team_details", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "image_name"
    t.string   "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "team_entries", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "title"
    t.string   "area_prof"
    t.string   "area_city"
    t.string   "genre"
    t.string   "level"
    t.string   "start_age"
    t.string   "end_age"
    t.text     "introduction"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "gender"
    t.string   "icon_name"
    t.text     "profile"
    t.string   "area"
    t.date     "birthday"
    t.string   "birthday_published"
    t.string   "favor_sports"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
