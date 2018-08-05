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

ActiveRecord::Schema.define(version: 2018_06_28_131852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certifications", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
  end

  create_table "certifications_profiles", id: false, force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "certification_id", null: false
  end

  create_table "customs", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "heading"
  end

  create_table "customs_profiles", id: false, force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "custom_id", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "institution"
    t.string "course"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
  end

  create_table "educations_profiles", id: false, force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "education_id", null: false
  end

  create_table "employments", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "company"
    t.string "role"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
  end

  create_table "employments_profiles", id: false, force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "employment_id", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.text "summary"
    t.string "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
    t.string "stream"
    t.string "name"
    t.string "status"
    t.string "approved_by"
    t.string "email"
  end

  create_table "profiles_projects", id: false, force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "project_id", null: false
  end

  create_table "profiles_sections", id: false, force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.bigint "section_id", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "skills"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
  end

  create_table "tokenurls", force: :cascade do |t|
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "profile_id"
  end

end
