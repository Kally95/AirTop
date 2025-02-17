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

ActiveRecord::Schema.define(version: 2019_08_24_130509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airdrops", force: :cascade do |t|
    t.string "title"
    t.float "amount"
    t.string "crypto"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text "description"
    t.string "photo"
    t.string "location"
    t.string "quote"
    t.string "link"
    t.boolean "fix"
    t.float "min"
    t.float "max"
    t.integer "winner"
    t.boolean "ref_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "public_key"
    t.boolean "admin"
    t.string "nickname"
    t.string "photo"
    t.integer "age"
    t.string "affiliate_link"
    t.string "wallet_balance"
    t.bigint "airdrop_id"
    t.index ["airdrop_id"], name: "index_users_on_airdrop_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "users", "airdrops"
end
