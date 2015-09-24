github "sravan123"



create_table "students", :force => true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.string   "email"    
    # t.string   "password_digest"
    t.text   "address"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
end


create_table "schedules", :force => true do |t|
    t.integer "student_id"
    t.integer "klass_id"
    t.date   "date" # days                    
    t.time   "start_time"
    t.time   "end_time"   
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false       
end

create_table "klasses", :force => true do |t|
    t.string   "klassyear"
    t.integer  "period"    
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
end

create_table "klasses_students", :id => false, :force => true do |t|
    t.integer "klass_id"
    t.integer "student_id"
end



 Klass => has_and_belongs_to_many :students
 Student => has_and_belongs_to_many :klasses ,  has_many :schedules
 Schedule: belongs_to :klass,:student
 gem 'mysql2', '~> 0.3.20'
 rails g migration create_students
 
    	t.string   "student_number"
    	t.string   "username"
		t.string   "first_name"
		t.string   "last_name"
		t.string   "gender"
		t.string   "email"
		t.text   "address"
		t.datetime "created_at",      :null => false
		t.datetime "updated_at",      :null => false
 
