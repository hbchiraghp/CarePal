class Student < ActiveRecord::Base

	
	mount_uploader :profile_picture, AvatarUploader
	STUDENTS = Student.pluck(:student_number)

	#**** Assosciations *******

	has_many :schedules

	#**** Scopes declaration ******
	scope :active, -> { where(deleted: false,status: 1) }
  scope :inactive, -> { where(status: 0,deleted: false) }  
	scope :deleted, -> { where(deleted: true) }

	#**** Enums declaration ******

	enum status: { active: 0, inactive: 1 }
	enum gender: { :male => '0' , :female => '1' }

	#**** Validations ******

	validates :email,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "Invalid email format" } , uniqueness: true,length: { in: 0..60},on: :create
	validates :first_name,:last_name,:username,presence: true, length: { in: 0..30 }
	validates :username, uniqueness: true,on: :create 
	validates :student_number,uniqueness: true,length: { in: 0..20 }
	validates :postcode, length: { in: 0..10}
	validates :address_1,:address_2, length: { in: 0..255}
	validates :gender, inclusion: { in: ['male', 'female'] }
	validates :status, inclusion: { in: ['active', 'inactive'] }
	validates :city,:country, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }  

	#**** Methods ******
	
	def initialize(attributes=nil, *args)
  super    
    self.student_number = Student.get_student_number
  end
    
  def self.get_student_number    
    p = Student.order('created_at DESC').first
    p.present? ? p.student_number.to_s.succ : "CRE-001"
  end  

  def mark_for_delete!
    update_attribute(:deleted, true)
  end
end


# == Schema Information

# Table name: students

#  id         :integer          not null, primary key
#  string   "student_number",     limit: 20,  default: "",    null: false
#  string   "username",    limit: 30,  default: "",    null: false
#  string   "first_name",    limit: 30,  default: "",    null: false
#  string   "last_name",     limit: 30,  default: "",    null: false
#  string   "email",         limit: 60,  default: "",    null: false
#  integer  "gender",        limit: 255
#  date     "dob"
#  string   "address_1",      limit: 255, default: "",    null: false
#  string   "address_2",      limit: 255, default: "",    null: false
#  string   "city",          limit: 50
#  string   "country",       limit: 50
#  string   "postcode",      limit: 10,  default: "",    null: false
#  string   "profile_picture",        limit: 255
#  integer  "status",        limit: 4,   default: 1,     null: false
#  boolean  "deleted",       limit: 1,   default: false, null: false
#  datetime "created_at",	 null: false
#  datetime "updated_at",	 null: false

#     