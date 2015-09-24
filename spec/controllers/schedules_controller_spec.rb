# require 'spec_helper'
# describe SchedulesController do
# 	let(:schedule) { FactoryGirl.create :schedule }

# 	before(:each) do
# 	    request.env["HTTP_REFERER"] = student_path(:student)
#   	end

#   	context "Schedule For Student" do
# 		before{ FactoryGirl.build(:student) }
#   		it "POST /create" do
# 	      	expect {
# 	        	post :create, {
# 	        	  { "schedule" => schedule }
# 	        	}
# 	      	}.to change{
# 	        	Schedule.count
# 	      }.by(1)
# 	    end
#   	end
# end