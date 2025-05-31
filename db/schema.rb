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

ActiveRecord::Schema[8.0].define(version: 2025_05_31_002607) do
  create_table "daily_reflections", force: :cascade do |t|
    t.integer "seeker_id", null: false
    t.integer "pal_id", null: false
    t.text "user_note"
    t.integer "mood_score"
    t.text "ai_reflection"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pal_id"], name: "index_daily_reflections_on_pal_id"
    t.index ["seeker_id"], name: "index_daily_reflections_on_seeker_id"
  end

  create_table "guides", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pals", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "visual_theme"
    t.text "system_prompt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seekers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "pal_id", null: false
    t.boolean "is_anonymous"
    t.integer "streak"
    t.datetime "last_login_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pal_id"], name: "index_seekers_on_pal_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "guide_id", null: false
    t.integer "seeker_id", null: false
    t.text "description"
    t.string "frequency"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guide_id"], name: "index_tasks_on_guide_id"
    t.index ["seeker_id"], name: "index_tasks_on_seeker_id"
  end

  add_foreign_key "daily_reflections", "pals"
  add_foreign_key "daily_reflections", "seekers"
  add_foreign_key "seekers", "pals"
  add_foreign_key "tasks", "guides"
  add_foreign_key "tasks", "seekers"
end
