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

ActiveRecord::Schema.define(version: 2018_07_30_085154) do

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "password_changed_at"
    t.string "unique_session_id"
    t.datetime "last_activity_at"
    t.datetime "expired_at"
    t.string "paranoid_verification_code"
    t.integer "paranoid_verification_attempt", default: 0
    t.datetime "paranoid_verified_at"
    t.integer "security_question_id"
    t.string "security_question_answer"
    t.boolean "admin"
    t.index ["email"], name: "index_pages_on_email", unique: true
    t.index ["expired_at"], name: "index_pages_on_expired_at"
    t.index ["last_activity_at"], name: "index_pages_on_last_activity_at"
    t.index ["paranoid_verification_code"], name: "index_pages_on_paranoid_verification_code"
    t.index ["paranoid_verified_at"], name: "index_pages_on_paranoid_verified_at"
    t.index ["reset_password_token"], name: "index_pages_on_reset_password_token", unique: true
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.integer "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "publish"
    t.string "picture"
    t.index ["page_id"], name: "index_posts_on_page_id"
  end

  create_table "the_resources", force: :cascade do |t|
    t.datetime "password_changed_at"
    t.string "unique_session_id", limit: 20
    t.datetime "last_activity_at"
    t.datetime "expired_at"
    t.string "paranoid_verification_code"
    t.integer "paranoid_verification_attempt", default: 0
    t.datetime "paranoid_verified_at"
    t.integer "security_question_id"
    t.string "security_question_answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expired_at"], name: "index_the_resources_on_expired_at"
    t.index ["last_activity_at"], name: "index_the_resources_on_last_activity_at"
    t.index ["paranoid_verification_code"], name: "index_the_resources_on_paranoid_verification_code"
    t.index ["paranoid_verified_at"], name: "index_the_resources_on_paranoid_verified_at"
  end

end
