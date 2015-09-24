class Student < ActiveRecord::Base
  
  ############# Scopes ##############
    scope :active, -> { where(deleted: false,status: 1) }
    scope :inactive, -> { where(status: 0,deleted: false) }  
    scope :deleted, -> { where(deleted: true) } 

  ############## Enums ##############
    enum gender: { :male => "0", :female => "1" }
    enum status: [ :active, :inactive ]

  ############## Validations ########
    validates :email,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "Invalid email format" } , uniqueness: true,length: { in: 0..60}, on: :create
    validates :first_name,:last_name,:username,presence: true, length: { in: 0..30 }
    validates :gender, inclusion: { in: ['male', 'female'] }
    validates :status, inclusion: { in: ['active', 'inactive'] }
    validates :username, uniqueness: true, on: :create
    validates :student_number,uniqueness: true,length: { in: 0..20 }
    validates :postcode, length: { in: 0..10} 
    validates :address_1,:address_2, length: { in: 0..255}
    validates :city,:country, length: { maximum: 50, too_long: "%{count} characters is the maximum allowed" }  

  ############## Associations ########
    has_many :schedules

  mount_uploader :profile_picture, AvatarUploader

  ############## Methods ############
  	def initialize(attributes=nil, *args)
      super    
      self.student_number = Student.next_student_number
    end
    
    def self.next_student_number    
      p = Student.order('created_at DESC').first
      p.present? ? p.student_number.to_s.succ : "SD-001"
    end  

    def soft_delete!
      update_attribute(:deleted, true)
    end

end

######################## Schema Information ################
#
# Table Name: students
#
# string   "student_number",  limit: 20, default: "",    null: false
# string   "username",        limit: 30, default: "",    null: false
# string   "first_name",      limit: 30, default: "",    null: false
# string   "last_name",       limit: 30, default: "",    null: false
# string   "profile_picture"
# string   "gender"
# date     "dob"
# string   "email",           limit: 60, default: "",    null: false
# string   "address_1",                  default: "",    null: false
# string   "address_2",                  default: "",    null: false
# string   "city",            limit: 50
# string   "country",         limit: 50
# string   "postcode",        limit: 10, default: "",    null: false
# integer  "status",                     default: 0,     null: false
# boolean  "deleted",                    default: false, null: false
# datetime "created_at",                                 null: false
# datetime "updated_at",                                 null: false