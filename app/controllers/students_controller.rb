class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :edit, :update, :destroy,:send_schedule_mail]
  
  def index
    @students = Student.active.paginate(:page => params[:page], :per_page => 5)    
  end
  
  def show
    @student.schedules
  end

  def new
    @student = Student.new
  end

  def edit;  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student, notice: 'Student was successfully created.'
    else
      render :new
    end    
  end

  def update
    if @student.update(student_params)
      redirect_to @student, notice: 'Student was successfully updated.'
    else
      render :edit
    end    
  end

  def destroy
    @student.soft_delete!
    redirect_to students_url, notice: 'Student was successfully destroyed.'
  end

  def send_schedule_mail
    if params[:email].present?
      StudentMailer.student_schedule(@student,params[:email]).deliver 
      redirect_to @student, notice: 'Email sent successfully.'
    else
      redirect_to @student, alert: 'Enter valid email.'
    end
  end

  private
    
    def find_student
      @student = Student.active.find(params[:id])
      rescue ActiveRecord::RecordNotFound
			  flash[:notice] = "Record not found."
			  redirect_to :action => 'index'
    end

    
    def student_params
      params.require(:student).permit(:username, :first_name, :last_name, :email, :gender, :dob, :address_1, :address_2, :city, :country, :postcode, :profile_picture, :status)
    end
end