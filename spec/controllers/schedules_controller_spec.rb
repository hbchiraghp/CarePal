require 'spec_helper'
describe SchedulesController, :type => :controller do
	let(:schedule) { FactoryGirl.create :schedule }

	before(:each) do
	    request.env["HTTP_REFERER"] = student_path(:student)
  	end

  	context "Schedule For Student" do
		before{ FactoryGirl.build(:student) }
  		it "POST /create" do
	      	expect {
	        	post :create, {"schedule" => {
	        		"student" => :student,
	        		"course" => "test",
	        		"start_date" => "10-10-1986",
	        		"end_date" => "10-10-1986",
	        		"start_time" => "03:00",
	        		"end_time" => "03:00",
	        		"location" => "NewYork",
	        		"faculty" => "Name1"
	        		} }
	      	}
	      	 request.env["HTTP_REFERER"] = student_path(:student)
	    end
  	end
end