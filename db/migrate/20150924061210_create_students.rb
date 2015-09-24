class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string   "student_number"
    	t.string   "username"
		t.string   "first_name"
		t.string   "last_name"
		t.string   "gender"
		t.string   "email"
		t.text   "address"
		t.datetime "created_at",      :null => false
		t.datetime "updated_at",      :null => false
    end
  end
end
