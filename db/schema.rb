# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_02_114600) do

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "genre_id"
  end

  create_table "ba_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.bigint "bath_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bath_id"], name: "index_ba_comments_on_bath_id"
    t.index ["user_id"], name: "index_ba_comments_on_user_id"
  end

  create_table "baths", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.text "text", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_baths_on_user_id"
  end

  create_table "ki_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.bigint "kitchen_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kitchen_id"], name: "index_ki_comments_on_kitchen_id"
    t.index ["user_id"], name: "index_ki_comments_on_user_id"
  end

  create_table "kitchens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.text "text", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_kitchens_on_user_id"
  end

  create_table "to_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.bigint "toilet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["toilet_id"], name: "index_to_comments_on_toilet_id"
    t.index ["user_id"], name: "index_to_comments_on_user_id"
  end

  create_table "toilets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.text "text", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_toilets_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", null: false
    t.string "name", null: false
    t.string "name_kana", null: false
    t.integer "occupation_id", null: false
    t.integer "gender_id", null: false
    t.string "birth", null: false
    t.string "family_member", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ba_comments", "baths"
  add_foreign_key "ba_comments", "users"
  add_foreign_key "baths", "users"
  add_foreign_key "ki_comments", "kitchens"
  add_foreign_key "ki_comments", "users"
  add_foreign_key "kitchens", "users"
  add_foreign_key "to_comments", "toilets"
  add_foreign_key "to_comments", "users"
  add_foreign_key "toilets", "users"
end
