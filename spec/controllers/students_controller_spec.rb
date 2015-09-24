require 'spec_helper'

describe StudentsController, :type => :controller do
  let(:student) { FactoryGirl.create :student }
  
  before(:each) do
    request.env["HTTP_REFERER"] = root_path
  end

  context "Student Page Access" do

    it "POST /create" do
      expect {
        post :create, {
          "student" => {
            "student_number" => "06221A0453",
            "username"       => "James-Smith",
            "first_name"     => "James",
            "last_name"      => "Smith",
            "gender"         => "1",
            "dob"            => "10-10-1986",
            "email"          => "james.smith@gmail.com",
            "address_1"      => "Street 1",
            "address_2"      => "Street 2",
            "city"           => "Newyork",
            "country"        => "United States",
            "postcode"       => "52260",
            "status"         => "active",
            "deleted"        => 0
          },
        }
      }.to change{
        Student.count
      }.by(1)
    end

    it "GET /new" do
      get :new
      response.should be_success
    end

    it "DELETE /:id" do
      delete :destroy, id: student.id
      response.should be_redirect
    end

    it "PUT /update" do
      put :update, {
        "student" => {
          "student_number" => "06221A0453",
          "username"       => "James-Smith",
          "first_name"     => "John",
          "last_name"      => "Smith",
          "gender"         => "1",
          "dob"            => "10-10-1986",
          "email"          => "james.smith@gmail.com",
          "address_1"      => "Street 1",
          "address_2"      => "Street 2",
          "city"           => "Newyork",
          "country"        => "United States",
          "postcode"       => "52260",
          "status"         => "active",
          "deleted"        => 0
        },
        "id" => student.id,
      }

      student.reload
      student.first_name.should == "John"
    end

    it "GET /edit" do
      get :edit, id: student.id
      response.should be_success
    end
    
  end  
end
