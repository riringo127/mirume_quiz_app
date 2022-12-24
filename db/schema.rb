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

ActiveRecord::Schema.define(version: 2022_12_22_033538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
  end

  create_table "choices", force: :cascade do |t|
    t.string "content", null: false
    t.integer "is_answer", default: 0, null: false
    t.bigint "quiz_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id"], name: "index_choices_on_quiz_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.string "css_class", null: false
    t.integer "season_type", default: 0, null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_colors_on_category_id"
    t.index ["code"], name: "index_colors_on_code", unique: true
    t.index ["css_class"], name: "index_colors_on_css_class", unique: true
    t.index ["name"], name: "index_colors_on_name", unique: true
  end

  create_table "correct_answers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "quiz_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id"], name: "index_correct_answers_on_quiz_id"
    t.index ["user_id"], name: "index_correct_answers_on_user_id"
  end

  create_table "incorrect_answers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "quiz_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["quiz_id"], name: "index_incorrect_answers_on_quiz_id"
    t.index ["user_id"], name: "index_incorrect_answers_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.bigint "color_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["color_id"], name: "index_quizzes_on_color_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "name", null: false
    t.integer "role", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.integer "access_count_to_reset_password_page", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "choices", "quizzes"
  add_foreign_key "colors", "categories"
  add_foreign_key "correct_answers", "quizzes"
  add_foreign_key "correct_answers", "users"
  add_foreign_key "incorrect_answers", "quizzes"
  add_foreign_key "incorrect_answers", "users"
  add_foreign_key "quizzes", "colors"
end
