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

ActiveRecord::Schema.define(version: 20150924125727) do

  create_table "schedules", force: true do |t|
    t.integer  "student_id"
    t.string   "course",     limit: 160, default: "", null: false
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "location",               default: "", null: false
    t.string   "faculty"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "students", force: true do |t|
    t.string   "student_number",  limit: 20, default: "",    null: false
    t.string   "username",        limit: 30, default: "",    null: false
    t.string   "first_name",      limit: 30, default: "",    null: false
    t.string   "last_name",       limit: 30, default: "",    null: false
    t.string   "profile_picture"
    t.string   "gender"
    t.date     "dob"
    t.string   "email",           limit: 60, default: "",    null: false
    t.string   "address_1",                  default: "",    null: false
    t.string   "address_2",                  default: "",    null: false
    t.string   "city",            limit: 50
    t.string   "country",         limit: 50
    t.string   "postcode",        limit: 10, default: "",    null: false
    t.integer  "status",                     default: 0,     null: false
    t.boolean  "deleted",                    default: false, null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

end
