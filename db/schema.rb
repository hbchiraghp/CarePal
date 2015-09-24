# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150924130902) do

  create_table "schedules", force: :cascade do |t|
    t.integer  "student_id", limit: 4
    t.string   "course",     limit: 160, default: "", null: false
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "location",   limit: 255, default: "", null: false
    t.string   "faculty",    limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "schedules", ["course"], name: "index_schedules_on_course", using: :btree
  add_index "schedules", ["student_id"], name: "index_schedules_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "student_number",  limit: 20,  default: "",    null: false
    t.string   "username",        limit: 30,  default: "",    null: false
    t.string   "first_name",      limit: 30,  default: "",    null: false
    t.string   "last_name",       limit: 30,  default: "",    null: false
    t.string   "profile_picture", limit: 255
    t.string   "gender",          limit: 255
    t.date     "dob"
    t.string   "email",           limit: 60,  default: "",    null: false
    t.string   "address_1",       limit: 255, default: "",    null: false
    t.string   "address_2",       limit: 255, default: "",    null: false
    t.string   "city",            limit: 50
    t.string   "country",         limit: 50
    t.string   "postcode",        limit: 10,  default: "",    null: false
    t.integer  "status",          limit: 4,   default: 0,     null: false
    t.boolean  "deleted",         limit: 1,   default: false, null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

end
