# class DobValidator < ActiveModel::EachValidator
#   def validate_each(record, attribute, value)
#     if ((DateTime.parse(value) rescue ArgumentError) == ArgumentError)
#       record.errors[attribute] << (options[:message] || "please enter a valid date")
#     end
#   end
# end


class Schedule < ActiveRecord::Base
	belongs_to :student

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

