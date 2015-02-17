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

ActiveRecord::Schema.define(version: 20150216165506) do

  create_table "articles", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.text     "quote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "comment2s", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "elephant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comment2s", ["elephant_id"], name: "index_comment2s_on_elephant_id"

  create_table "comment4s", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "doc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comment4s", ["doc_id"], name: "index_comment4s_on_doc_id"

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "report_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["report_id"], name: "index_comments_on_report_id"

  create_table "docs", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elephants", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.string   "title"
    t.string   "department"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "ntn"
    t.boolean  "non"
    t.boolean  "nen"
    t.boolean  "nfn"
  end

  create_table "materials", force: true do |t|
    t.string   "author"
    t.string   "position"
    t.string   "title"
    t.text     "annotation"
    t.boolean  "ntn"
    t.boolean  "nen"
    t.boolean  "nfn"
    t.boolean  "non"
    t.integer  "year"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "media", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.text     "quote"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "tweet"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: true do |t|
    t.string   "author"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "name"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
