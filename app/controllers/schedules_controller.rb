class SchedulesController < ApplicationController
  before_action :find_schedule, only: [:show, :edit, :update, :destroy]
  
  def index
    @schedules = Schedule.all    
  end
  
  def show;  end

  def new
    if params[:student_id].present?
      @schedule = Schedule.new(:student_id => params[:student_id])
    else
      redirect_to @schedule, alert: 'Unauthorized acesss'      
    end
  end

  def edit;  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to @schedule.student, notice: 'Schedule was successfully created.'
    else
      # redirect_to @schedule.student, notice: 'Please fill all the fields correctly.'
      params[:student_id] = @schedule.student
      render :new, alert: 'Please fill all the fields correctly.'
    end    
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to @schedule.student, notice: 'Schedule was successfully updated.'
    else
      render :edit
    end    
  end

  def destroy
    @schedule.destroy
    redirect_to @schedule.student, notice: 'Schedule was successfully destroyed.'
  end

  private
    
    def find_schedule
      @schedule = Schedule.find(params[:id])
      rescue ActiveRecord::RecordNotFound
			  flash[:notice] = "Record not found."
			  redirect_to :action => 'index'
    end

    
    def schedule_params
      params.require(:schedule).permit(:student_id, :course, :start_date, :end_date, :start_time, :end_time, :location, :faculty)
    end
end
