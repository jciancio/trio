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

ActiveRecord::Schema.define(version: 20151019232105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_dob_to_welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "age_validators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "email_validators", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price_in_cents"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "url"
    t.integer  "user_id"
  end

  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "products_users", id: false, force: :cascade do |t|
    t.integer "user_id",    null: false
    t.integer "product_id", null: false
  end

  add_index "products_users", ["product_id", "user_id"], name: "index_products_users_on_product_id_and_user_id", using: :btree
  add_index "products_users", ["user_id", "product_id"], name: "index_products_users_on_user_id_and_product_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["product_id"], name: "index_reviews_on_product_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.text     "address"
    t.string   "credit_card"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "email_confirmation"
    t.date     "birthday"
    t.string   "credit_card_type"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "products", "users"
  add_foreign_key "reviews", "products"
end
