class StudentMailer < ActionMailer::Base
  default from: "xxxxxxx@gmail.com"

  def student_schedule(student,email)
  	@student = student    
    mail(to: email, subject: 'CarePal Site - Schedule')
  end
end
