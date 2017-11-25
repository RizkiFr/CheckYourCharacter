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

ActiveRecord::Schema.define(version: 20171125011554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.text "pertanyaan"
    t.string "pilihan_A"
    t.string "pilihan_B"
    t.string "pilihan_C"
    t.string "pilihan_D"
    t.string "jawaban"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "nim"
    t.string "nama"
    t.string "jenis_kelamin"
    t.text "alamat"
    t.string "tempat_lahir"
    t.date "tgl_lahir"
    t.string "jurusan"
    t.string "fakultas"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kepribadian"
    t.string "no_telepon"
    t.string "keterangan"
    t.string "profile_picture"
  end

end
