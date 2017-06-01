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

ActiveRecord::Schema.define(version: 20170531232034) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "letters", force: :cascade do |t|
    t.string   "company",    null: false
    t.string   "position",   null: false
    t.string   "greeting",   null: false
    t.text     "paragraph1", null: false
    t.text     "paragraph2", null: false
    t.text     "paragraph3", null: false
    t.text     "paragraph4", null: false
    t.text     "paragraph5", null: false
    t.string   "url"
    t.string   "address",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postings", force: :cascade do |t|
    t.string   "title",          null: false
    t.string   "qualifications"
    t.string   "description",    null: false
    t.string   "company",        null: false
    t.string   "location"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.integer "users_id"
    t.integer "postings_id"
    t.index ["postings_id"], name: "index_submissions_on_postings_id", using: :btree
    t.index ["users_id"], name: "index_submissions_on_users_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.text     "image"
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
