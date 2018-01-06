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

ActiveRecord::Schema.define(version: 20180106012657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string "jawaban_1"
    t.string "jawaban_2"
    t.string "jawaban_3"
    t.string "jawaban_4"
    t.string "jawaban_5"
    t.string "jawaban_6"
    t.string "jawaban_7"
    t.string "jawaban_8"
    t.string "jawaban_9"
    t.string "jawaban_10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "jawaban_11"
    t.string "jawaban_12"
    t.string "jawaban_13"
    t.string "jawaban_14"
    t.string "jawaban_15"
    t.string "jawaban_16"
    t.string "jawaban_17"
    t.string "jawaban_18"
    t.string "jawaban_19"
    t.string "jawaban_20"
    t.string "jawaban_21"
    t.string "jawaban_22"
    t.string "jawaban_23"
    t.string "jawaban_24"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "view"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.bigint "article_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.text "text"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_complaints_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "no"
    t.string "dominance"
    t.string "influence"
    t.string "steadiness"
    t.string "compliance"
  end

  create_table "roles", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nim"
    t.string "nama"
    t.string "jenis_kelamin"
    t.text "alamat"
    t.string "tempat_lahir"
    t.date "tgl_lahir"
    t.string "kepribadian"
    t.string "no_telepon"
    t.string "profile_picture"
    t.string "confirmation_token"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "confirmed_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "answers", "users"
  add_foreign_key "articles", "users"
  add_foreign_key "comments", "articles"
  add_foreign_key "comments", "users"
  add_foreign_key "complaints", "users"
end
