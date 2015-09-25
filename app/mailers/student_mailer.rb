class StudentMailer < ActionMailer::Base
	default :from => 'default@myapp.com'

  def student_schedule(student,email)
  	@student = student   
  	# set_profile_picture(@student) 
    mail(to: email, subject: 'CarePal Site - Schedules')
  end

  # To load profile pic in email body
  # def set_profile_picture(student,index="")
  #   if Rails.env != 'development'
  #     attachments.inline["profile_pic#{'student'+index.to_s if index.present?}"] = {
  #         :data => student.profile_picture,
  #         :mime_type => "image/jpg",
  #         :encoding => "base64"
  #     }
  #   else
  #     attachments.inline["profile_pic"] = {          
  #         :data => File.read("#{student.profile_picture.path}"),
  #         :mime_type => "image/jpg",
  #         :encoding => "base64"
  #     }
  #   end
  # end

end
