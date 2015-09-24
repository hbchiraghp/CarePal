class Schedule < ActiveRecord::Base
	
	############## Validations ########
	 	validates :start_date,:end_date, :start_time,:end_time, :location, :faculty,:course,:student_id,presence: true

	############## Associations ########
		belongs_to :student
end
