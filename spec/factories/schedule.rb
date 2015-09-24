FactoryGirl.define do

    factory :schedule do
        course      'Test'
        start_date  { Faker::Date.forward(2) }
        end_date    { Faker::Date.forward(25) }
        start_time  { Faker::Time.forward(9, :morning) }
        end_time    { Faker::Time.forward(17, :morning) }
        location    { Faker::Address.street_address }
        faculty     'faculty1'
        student
    end
end

