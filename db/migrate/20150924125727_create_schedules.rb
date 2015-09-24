class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
    	t.integer   "student_id", index: true
    	t.string  	"course", limit: 160, default: "", null: false, index: true
    	t.date 	  	"start_date"
    	t.date    	"end_date"
    	t.time    	"start_time"
    	t.time    	"end_time"
    	t.string  	"location", default: "", null: false
    	t.string  	"faculty"   
    	t.datetime  "created_at",      :null => false
    	t.datetime  "updated_at",      :null => false
    end
  end
end
