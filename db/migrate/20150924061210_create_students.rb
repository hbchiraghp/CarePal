class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string   "student_number", limit: 20, default: "", null: false, :unique => true
    	t.string   "username", limit: 30, default: "", null: false, :unique => true
		t.string   "first_name", limit: 30, default: "", null: false
		t.string   "last_name", limit: 30, default: "", null: false
		t.string   "profile_picture"
		t.string   "gender"
		t.date     "dob"
		t.string   "email", limit: 60, default: "", null: false, :unique => true
		t.string   "address_1", default: "", null: false
		t.string   "address_2", default: "", null: false
		t.string   "city", limit: 50
		t.string   "country", limit: 50
		t.string   "postcode", limit: 10, default: "", null: false
		t.integer  "status", default: 0, null: false
		t.boolean  "deleted", default: 0, null: false
		t.datetime "created_at",      :null => false
		t.datetime "updated_at",      :null => false
    end
  end
end
