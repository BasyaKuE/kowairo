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

ActiveRecord::Schema[7.0].define(version: 2024_06_01_113150) do
  create_table "anime_voice_actors", force: :cascade do |t|
    t.integer "anime_id", null: false
    t.integer "voice_actor_id", null: false
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_anime_voice_actors_on_anime_id"
    t.index ["voice_actor_id"], name: "index_anime_voice_actors_on_voice_actor_id"
  end

  create_table "animes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_animes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "anime_id", null: false
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_user_animes_on_anime_id"
    t.index ["user_id"], name: "index_user_animes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "voice_actors", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.date "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "anime_voice_actors", "animes"
  add_foreign_key "anime_voice_actors", "voice_actors"
  add_foreign_key "user_animes", "animes"
  add_foreign_key "user_animes", "users"
end
