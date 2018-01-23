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

ActiveRecord::Schema.define(version: 20180123162829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alertmessages", force: :cascade do |t|
    t.bigint "alert_id"
    t.string "description"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id"], name: "index_alertmessages_on_alert_id"
  end

  create_table "alerts", force: :cascade do |t|
    t.string "type"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alertsubscriptions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "alert_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alert_id"], name: "index_alertsubscriptions_on_alert_id"
    t.index ["user_id"], name: "index_alertsubscriptions_on_user_id"
  end

  create_table "answeroptions", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "user_id"
    t.text "content"
    t.boolean "selected"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answeroptions_on_question_id"
    t.index ["user_id"], name: "index_answeroptions_on_user_id"
  end

  create_table "badges", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributions", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.text "content"
    t.date "date"
    t.bigint "user_id"
    t.bigint "group_id"
    t.string "type"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_contributions_on_group_id"
    t.index ["user_id"], name: "index_contributions_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.bigint "mentoring_id"
    t.bigint "user_id"
    t.string "role"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentoring_id"], name: "index_members_on_mentoring_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "mentorings", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "username"
    t.bigint "user_id"
    t.text "content"
    t.date "date"
    t.integer "vote_counter"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "contribution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contribution_id"], name: "index_subscriptions_on_contribution_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "useralerts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "alertmessage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alertmessage_id"], name: "index_useralerts_on_alertmessage_id"
    t.index ["user_id"], name: "index_useralerts_on_user_id"
  end

  create_table "userbadges", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "badge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["badge_id"], name: "index_userbadges_on_badge_id"
    t.index ["user_id"], name: "index_userbadges_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "firstname"
    t.string "lastname"
    t.string "password"
    t.string "email"
    t.date "registrationdate"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "alertmessages", "alerts"
  add_foreign_key "alertsubscriptions", "alerts"
  add_foreign_key "alertsubscriptions", "users"
  add_foreign_key "answeroptions", "questions"
  add_foreign_key "answeroptions", "users"
  add_foreign_key "contributions", "groups"
  add_foreign_key "contributions", "users"
  add_foreign_key "members", "mentorings"
  add_foreign_key "members", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "subscriptions", "contributions"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "useralerts", "alertmessages"
  add_foreign_key "useralerts", "users"
  add_foreign_key "userbadges", "badges"
  add_foreign_key "userbadges", "users"
end
