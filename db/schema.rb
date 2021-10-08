# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_10_08_232235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arcanas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.text "full_meaning"
    t.string "upright_meaning"
    t.string "reversed_meaning"
    t.bigint "arcana_id", null: false
    t.bigint "suit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arcana_id"], name: "index_cards_on_arcana_id"
    t.index ["suit_id"], name: "index_cards_on_suit_id"
  end

  create_table "suits", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "arcana_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["arcana_id"], name: "index_suits_on_arcana_id"
  end

  create_table "user_cards", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "card_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["card_id"], name: "index_user_cards_on_card_id"
    t.index ["user_id"], name: "index_user_cards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cards", "arcanas"
  add_foreign_key "cards", "suits"
  add_foreign_key "suits", "arcanas"
  add_foreign_key "user_cards", "cards"
  add_foreign_key "user_cards", "users"
end
