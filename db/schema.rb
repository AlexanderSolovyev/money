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

ActiveRecord::Schema.define(version: 20170321105258) do

  create_table "cards", force: :cascade do |t|
    t.string   "name"
    t.decimal  "balance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.date     "date"
    t.decimal  "quality"
    t.string   "comment"
    t.integer  "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_id"], name: "index_plans_on_type_id"
  end

  create_table "trans", force: :cascade do |t|
    t.date     "date"
    t.decimal  "quality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "type_id"
    t.integer  "card_id"
    t.index ["card_id"], name: "index_trans_on_card_id"
    t.index ["type_id"], name: "index_trans_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string   "operation"
    t.boolean  "debet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
