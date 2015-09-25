
class Schedule < ActiveRecord::Base
  #****** Assoscations ***********
  belongs_to :student

  #****** Validations ***********

  validates :start_date,:end_date, :start_time,:end_time, :location, :faculty,:course,:student_id,presence: true
end


# == Schema Information

# Table name: schedules

  # id    "student_id", limit: 4
  # string  t.string   "course",     limit: 160, default: "", null: false
  #   t.date     "start_date"
  #   t.date     "end_date"
  #   t.time     "start_time"
  #   t.time     "end_time"
  #   t.string   "location",   limit: 255, default: "", null: false
  #   t.string   "faculty",    limit: 255
  #   t.datetime "created_at",                          null: false
  #   t.datetime "updated_at",                          null: false
  # end

