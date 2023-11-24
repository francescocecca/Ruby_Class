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

ActiveRecord::Schema[7.1].define(version: 2023_11_24_165958) do
  create_table "active_courses", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "course_id", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "good_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_courses", force: :cascade do |t|
    t.string "name"
    t.integer "ects"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "roles_id"
    t.index ["roles_id"], name: "index_users_on_roles_id"
  end

  add_foreign_key "active_courses", "courses"
  add_foreign_key "active_courses", "students"
  add_foreign_key "users", "roles", column: "roles_id"
end
