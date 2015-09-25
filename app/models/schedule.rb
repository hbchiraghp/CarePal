class Schedule < ActiveRecord::Base
	
	############## Validations ########
	 	validates :start_date,:end_date, :start_time,:end_time, :location, :faculty,:course,:student_id,presence: true

	############## Associations ########
		belongs_to :student

	######################## Schema Information ################
	#
	# Table Name: schedules
	# 
	# integer  "student_id"
	# string   "course",     limit: 160, default: "", null: false
	# date     "start_date"
	# date     "end_date"
	# time     "start_time"
	# time     "end_time"
	# string   "location",               default: "", null: false
	# string   "faculty"
end
