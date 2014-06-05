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

ActiveRecord::Schema.define(version: 20140527191649) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "book_comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.text     "content"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_comments", ["book_id"], name: "index_book_comments_on_book_id"
  add_index "book_comments", ["user_id"], name: "index_book_comments_on_user_id"

  create_table "book_shelf_positions", force: true do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_shelf_positions", ["book_id"], name: "index_book_shelf_positions_on_book_id"
  add_index "book_shelf_positions", ["user_id"], name: "index_book_shelf_positions_on_user_id"

  create_table "books", force: true do |t|
    t.string   "title"
    t.integer  "author_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state",       default: 0
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id"

  create_table "books_tags", force: true do |t|
    t.integer "book_id"
    t.integer "tag_id"
  end

  create_table "friends", force: true do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friends", ["friend_id"], name: "index_friends_on_friend_id"
  add_index "friends", ["user_id"], name: "index_friends_on_user_id"

  create_table "messages", force: true do |t|
    t.integer  "sender_id"
    t.integer  "reciever_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["reciever_id"], name: "index_messages_on_reciever_id"
  add_index "messages", ["sender_id"], name: "index_messages_on_sender_id"

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "login"
    t.string   "password"
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
